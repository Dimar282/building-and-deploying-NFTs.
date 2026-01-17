```javascript
const hre = require("hardhat");

async function main() {
  const NFT1155 = await hre.ethers.getContractFactory("NFT1155");
  const nft1155 = await NFT1155.deploy();

  await nft1155.waitForDeployment();

  console.log("ERC-1155 contract deployed to:", await nft1155.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
```
