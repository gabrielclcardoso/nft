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
* There is a `DEFAULT_ADMIN_ROLE` and a `MINTER` role
* The `DEFAULT_ADMIN_ROLE` is responsible for delegating the `MINTER` role
* The `MINTER` role is the account of the first student to reach level 21, who will be able to mint the NFT
* The NFT will be soulbound, meaning that after the first student mints it he won't be able to transfer it

## How the ecosystem will work
1. The `DEFAULT_ADMIN_ROLE` grants the `MINTER` role to the wallet of the student who reaches level 21 first.
1. The `MINTER` is able to mint the NFT to his own wallet.
1. Anyone can now verify which is the wallet of the first student to reach level 21 through the ownership of the NFT.