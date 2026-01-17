```javascript
const hre = require("hardhat");

async function main() {
  const SoulboundNFT = await hre.ethers.getContractFactory("SoulboundNFT");
  const sbt = await SoulboundNFT.deploy();

  await sbt.waitForDeployment();

  console.log("Soulbound NFT deployed to:", await sbt.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
```
