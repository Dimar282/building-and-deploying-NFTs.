```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SoulboundNFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;

    constructor() ERC721("Soulbound NFT", "SBT") {
        _tokenIdCounter = 0;
    }

    function mint(address to) external onlyOwner {
        _safeMint(to, _tokenIdCounter);
        _tokenIdCounter++;
    }

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override returns (address) {
        address from = super._update(to, tokenId, auth);

        // Block transfers: allow minting (from == address(0)) and burning (to == address(0))
        require(
            from == address(0) || to == address(0),
            "Soulbound: token is non-transferable"
        );

        return from;
    }
}
```
