# 42RioDiploma NFT

## Introduction

This is a pedagogical project that consists in developping and deploying a Non Fungible Token on a blockchain 
of my choice.

It's better for you to read the `how_it_works.md` file on the documentation directory before as that file explains
the main logic behind the NFT and this one justifies the choices made during project development.

## Choices made

### Blockchain Choice
For this project, the blockchain chosen to deploy the NFT was Binance Smart Chain (BSC).
BSC was chosen because of it's compatibility with the Ethereum ecosystem and use of the solidity
programming language, with the advantage of faster transaction times and lower gas fees compared to Ethereum.
It was also chosen due to my familiarity with the ecosystem and having done previous projects on the chain.

### Developer Tools Choices

#### IDE
The IDE chosen was Remix. It was chosen for it's simplicity and ease of use aswell as it's simple integration
with github.

#### Wallet
the wallet chosen to interact with the project was MetaMask. I was already familiar with the wallet and because
of it's wide adoption it would be easier to integrate with other apps if necessary.

### Development Choices

#### Libraries
For this project the decision was made to use OpenZeppelin's contract libraries. OpenZeppelin is a well established
project on the web3 space and it's contract libraries are used in a wide range of projects on chain. Given it
is a battle tested library that supplies templates for easily developping BEP-721 compliant tokens it was an
easy choice.