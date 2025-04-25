# AssetSale Smart Contract  

🚀 **My first Solidity smart contract** for selling a digital asset on the Ethereum blockchain.

## 🌟 Features  
✔ **Ownership Tracking** – Keeps track of the current asset owner  
✔ **Fixed Price Sale** – Asset can only be purchased with the correct ETH amount  
✔ **Single Sale Enforcement** – Prevents the asset from being sold more than once  

## ⚙️ How It Works  
1. **Deploy the contract** with a fixed price (in Wei).  
2. **Buyers call `buy()`** while sending enough ETH.  
3. **Ownership is transferred** automatically to the buyer upon success.  

## 🛠️ Usage (For Developers)  
```solidity
// Deploy the contract with a price (e.g., 1 ETH = 1e18 Wei)
AssetSale asset = new AssetSale(1 ether);

// Buyer purchases the asset by sending ETH
asset.buy{value: 1 ether}();

---

🧪 [Try it on Remix](https://remix.ethereum.org/#url=https://raw.githubusercontent.com/lostbrain404/AssetSale-contract/main/AssetSale.sol)
