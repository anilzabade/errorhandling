# Gym Membership Smart Contract 
## Overview

This document provides an overview of the Gym Membership Smart Contract, a Solidity-based contract designed for managing gym memberships on the Ethereum blockchain.

## Features

### 1. Purchase Membership

The contract allows users to purchase gym memberships. Before granting a new membership, it checks if the caller is not already a member.

### 2. Access Gym

The contract includes a function to check if a user has an active gym membership before allowing access to the gym. If the caller does not have an active membership, the transaction is reverted with an appropriate error message.

### 3. Check Membership Status

Users can query the membership status of a specific address using the checkMembershipStatus function. This function uses the assert statement to ensure the provided address has an active gym membership.

## Usage

1. Deploy the Gym Membership Smart Contract to the Ethereum blockchain.
2. Users can purchase a gym membership by calling the purchaseMembership function.
3. Verify membership status using the checkMembershipStatus function.
4. Access the gym by calling the accessGym function, which checks for an active membership.

## Important Statements

- **require**: Used to ensure that specific conditions are met; otherwise, it throws an error message and reverts the transaction.
- **revert**: Triggered explicitly in the accessGym function if the caller lacks an active membership, providing a custom error message.
- **assert**: Employed in the checkMembershipStatus function to ensure there is an active membership for the provided address. If the condition is not met, it throws an error.

## Deployment

To deploy the contract, use a Solidity compiler compatible with version ^0.8.13. Interact with the contract through transactions to purchase memberships and check access.

## Author

Anurag

anilzabade5@gmail.com

## License

This Gym Membership Smart Contract is released under the MIT License. See the LICENSE file for details.
