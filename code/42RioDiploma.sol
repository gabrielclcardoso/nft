// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.5.0
pragma solidity ^0.8.27;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract RioDiploma42 is ERC721, ERC721URIStorage, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bool public hasBeenMinted = false;

    constructor(address defaultAdmin, address minter) ERC721("42RioDiploma", "42DIPL") {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(MINTER_ROLE, minter);
    }

    function safeMint(address to)
        public
        onlyRole(MINTER_ROLE)
    {
        require(!hasBeenMinted, "Achievement already claimed by the first student!");

        _safeMint(to, 1);
        _setTokenURI(1, "ipfs://bafkreifvu2gehllxytpsujqcvficld4phug4qeswyc3objxplci6dy4agq");

        hasBeenMinted = true; // Lock the contract forever
    }

    // Function override to make NFT soulbound
    function _update(address to, uint256 tokenId, address auth) internal override(ERC721) returns (address) {        address from = _ownerOf(tokenId);

        // If 'from' is not address(0), it's a transfer attempt (not a mint)
        if (from != address(0)) {
            revert("Achievement Locked: This NFT cannot be transferred.");
        }

        return super._update(to, tokenId, auth);
    }

    // The following functions are overrides required by Solidity.
    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}