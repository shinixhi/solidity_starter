# Smart Contract Project

## Overview

This repository contains a smart contract project implemented using Solidity. The project demonstrates the use of `require()`, `assert()`, and `revert()` statements to enhance contract security and functionality.

### Functionality

The smart contract (`SmartContract.sol`) implements the following functionalities:

- **require()**: Ensures conditions are met before executing transactions or functions.
- **assert()**: Validates internal conditions and halts execution if conditions are false.
- **revert()**: Reverts state changes and throws an exception if conditions are not met.

### Explanation

The project aims to showcase how these statements enhance the reliability and security of smart contracts by enforcing conditions and handling unexpected behaviors gracefully.

## Files

- `contracts/SmartContract.sol`: Contains the main smart contract code with `require()`, `assert()`, and `revert()` statements.
- `migrations/2_deploy_contracts.js`: Truffle migration script for deploying the smart contract.

## Installation

To run this project locally or in a development environment:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/SmartContract.git
   cd SmartContract
   
2. **Install dependencies (Truffle):**
npm install -g truffle
npm install

## Usage
1. **Compile the smart contracts:**
   truffle compile
2. **truffle migrate**
   migrate
3. **Test**
```bash
// Get the deployed instance of the contract
let smartInstance = await SmartContract.deployed();

// Set the number using setNumber
await smartInstance.setNumber(10);

// Retrieve the value of myNumber
let number = await smartInstance.myNumber();
console.log(number.toString()); // Outputs: 10

// Call assertExample
let assertResult = await smartInstance.assertExample(10);
console.log(assertResult); // Outputs: true

// Try to call revertExample with 0 (this will throw an error)
try {
    await smartInstance.revertExample(0);
} catch (error) {
    console.error(error.message); // Outputs: "Number cannot be zero"
}
```
## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For questions or feedback, please contact eidmuli@mymail.mapua.edu.ph
