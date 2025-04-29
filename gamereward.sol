// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GameRewardManager {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    struct Reward {
        string name;
        uint256 quantity;
    }

    mapping(address => Reward[]) public playerRewards;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    // Add reward to a player's account
    function addReward(address player, string memory rewardName, uint256 quantity) public onlyOwner {
        bool found = false;
        Reward[] storage rewards = playerRewards[player];

        for (uint i = 0; i < rewards.length; i++) {
            if (keccak256(bytes(rewards[i].name)) == keccak256(bytes(rewardName))) {
                rewards[i].quantity += quantity;
                found = true;
                break;
            }
        }

        if (!found) {
            rewards.push(Reward(rewardName, quantity));
        }
    }

    // View all rewards of a player
    function getRewards(address player) public view returns (Reward[] memory) {
        return playerRewards[player];
    }

    // Redeem a reward
    function redeemReward(string memory rewardName, uint256 quantity) public {
        Reward[] storage rewards = playerRewards[msg.sender];
        for (uint i = 0; i < rewards.length; i++) {
            if (keccak256(bytes(rewards[i].name)) == keccak256(bytes(rewardName))) {
                require(rewards[i].quantity >= quantity, "Not enough reward quantity");
                rewards[i].quantity -= quantity;
                return;
            }
        }
        revert("Reward not found");
    }
}
