# 42RioDiploma NFT

## NFT purpose

This NFT will be awarded to the first student of 42Rio to reach level 21. It will be a way for that student to
verify that he was the first one to reach the level in a decentralized manner.

## General Parameters
* The toekn follows the BEP-721 standard
* The token name is 42RioDiploma
* The token symbol is 42DIPL
* The smart contract has the Mintable feature enabled
* The smart contract has the AccessControl feature enabled with Roles
* The smart contract has the URI Storage feature enabled
* There is a `DEFAULT_ADMIN_ROLE` and a `MINTER` role
* The `DEFAULT_ADMIN_ROLE` is responsible for delegating the `MINTER` role
* The `MINTER` role is the account responsible for minting the NFT to the first student to reachlevel 21
* The NFT will be soulbound, meaning that after the first student receives it he won't be able to transfer it

## How the ecosystem will work
1. The `DEFAULT_ADMIN_ROLE` grants the `MINTER` role to a wallet that will be integrated into an interface/app.
1. The `MINTER` is able to mint the NFT to another wallet.
1. The app/interface will verify the first student to reach level 21 and mint the token to his wallet through
the `MINTER` wallet.
1. Anyone can now verify which is the wallet of the first student to reach level 21 through the ownership of the NFT.