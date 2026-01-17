```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title ERC-5192 Soulbound Token
/// @notice Minimal Soulbound Token implementation
/// @dev https://eips.ethereum.org/EIPS/eip-5192
interface IERC5192 {
    /// @notice Emitted when a token is locked
    event Locked(uint256 tokenId);

    /// @notice Emitted when a token is unlocked (optional)
    event Unlocked(uint256 tokenId);

    /// @notice Returns true if the token is locked
    function locked(uint256 tokenId) external view returns (bool);
}

contract SoulboundERC5192 is ERC721, Ownable, IERC5192 {
    uint256 private _tokenIdCounter;

    constructor() ERC721("Soulbound ERC5192", "SBT5192") {}

    function mint(address to) external onlyOwner {
        uint256 tokenId = _tokenIdCounter;
        _safeMint(to, tokenId);
        emit Locked(tokenId);
        _tokenICounter++;
    
    /// @notice Tokens are permanently locked
    function locked(uint256) external pure override returns (bool) {
        return true;
    }

    // @dev Block all transfers and approvals
    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override returns (address) {
        address from = super._update(to, tokenId, auth);

        // Allow minting (from == address(0)) and burning (to == address(0))
        require(
            from == address(0) || to == address(0),
            "ERC5192: Soulbound token"
        );

        return from;
    }
}
```
