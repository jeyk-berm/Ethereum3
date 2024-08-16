# Ethereum3
This is a standard ERC-20 token smart contract written in Solidity, utilizing OpenZeppelin's contracts for ERC-20 and access control.

#Overview
The Standard token contract is an ERC-20 compliant token that includes the following features:

* Name: The name of the token.
* Symbol: The symbol or ticker of the token.
* Total Supply: The total supply of tokens initially minted.
* Minting: The owner has the ability to mint additional tokens.
* Burning: Token holders can burn their own tokens.
* Ownership: The contract inherits from OpenZeppelin's Ownable contract, ensuring that only the owner can mint new tokens.
