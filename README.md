# 🎮 GameRewardManager.sol

A simple Solidity smart contract that manages in-game rewards for players.  
Players can earn rewards, view them, and redeem them — all powered by Ethereum blockchain logic.  
Perfect for blockchain-based games, loyalty apps, or just showing off your Web3 skills. 😉

---

## 🔧 Features

- 🧑‍💻 Player-specific reward tracking  
- 🎁 Add any type of reward (XP, coins, items, etc.)  
- 📝 View all rewards for a player  
- 🧹 Redeem (consume) a reward  
- 🔐 Only the contract owner can assign rewards

---

## 📦 Smart Contract Details

- Language: Solidity `^0.8.0`
- License: MIT
- Frameworks: [Remix](https://remix.ethereum.org) (recommended for testing)
- No external dependencies

---

## 🛠️ Functions

### 🔐 `addReward(address player, string rewardName, uint quantity)`
Adds or updates a reward for a specific player.  
**Only callable by contract owner.**

### 👀 `getRewards(address player) → Reward[]`
Returns a list of all rewards associated with the player.

### 🔄 `redeemReward(string rewardName, uint quantity)`
Allows a player to redeem (consume) a specific quantity of a reward.

---

## 🧪 Try It Out on Remix

1. Go to [Remix IDE](https://remix.ethereum.org)
2. Contract ID - 0x5bdF350D9eFbfA67Cd5801c244b2C21c6017196B
3. ![image](https://github.com/user-attachments/assets/d5913ed1-a780-4f58-8944-9f487a2df073)

