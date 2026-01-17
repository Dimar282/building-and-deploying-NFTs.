```javascript
const hre = require("hardhat");

async function main() {
  const ERC5192 = await hre.ethers.getContractFactory("SoulboundERC5192");
  const sbt = await ERC5192.deploy();

  await sbt.waitForDeployment();

  console.log("ERC-5192 Soulbound NFT deployed to:", await sbt.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
```
