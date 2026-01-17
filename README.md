# building-and-deploying-NFTs.
building and deploying NFTs.
# NFT Builder Suite

NFT Builder Suite is a complete, modular project for creating, deploying, and managing NFTs on Ethereum-compatible blockchains.
It is designed for developers who want a clean and extensible starting point for NFT projects.

## Features

* ERC-721 compliant smart contract
* Metadata standard support (IPFS / JSON)
* Deployment scripts using Hardhat
* Environment-based configuration
* Beginner-friendly documentation

## Tech Stack

* Solidity
* Hardhat
* Node.js
* OpenZeppelin Contracts
* IPFS-compatible metadata

## Getting Started

### 1. Clone the repository

```
git clone https://github.com/your-username/nft-builder-suite.git
cd nft-builder-suite
```

### 2. Install dependencies

```
npm install
```

### 3. Configure environment variables

Create a `.env` file based on `.env.example`.

### 4. Compile the smart contracts

```
npx hardhat compile
```

### 5. Deploy the contract

```
npx hardhat run scripts/deploy.js --network sepolia
```

## Project Structure

* `contracts/` – Solidity smart contracts
* `scripts/` – Deployment and interaction scripts
* `metadata/` – NFT metadata examples
* `.env.example` – Environment variable template

## NFT Metadata

Each NFT uses a JSON metadata file compatible with OpenSea and other marketplaces.
Example metadata can be found in the `metadata/` directory.

## Security Notes

* This project is for educational purposes
* Always audit smart contracts before mainnet deployment
* Never commit private keys or secrets

## License

MIT License

## Supported Token Standards

This repository supports multiple Ethereum token standards:

### ERC-721 (Single NFTs)

* Unique, non-fungible tokens
* Ideal for 1-of-1 artwork or collectibles

### ERC-1155 (Multi-Tokens)

* Semi-fungible and fungible tokens
* Batch minting support
* Lower gas costs
* Ideal for gaming assets, editions, and collections

You can deploy and use both standards independently.

## Soulbound NFTs (SBT)

Soulbound NFTs are non-transferable tokens permanently bound to a wallet.
They cannot be sold or transferred and are typically used for:

* Digital identities
* Certificates and diplomas
* DAO memberships
* Reputation systems
* Achievements and credentials

This implementation follows the ERC-721 standard while disabling all transfers.

