
1. Setting up the development environment
2. Creating a Truffle project using a Truffle Box
3. Writing the smart contract
4. Compiling and migrating the smart contract
5. Testing the smart contract
6. Creating a user interface to interact with the smart contract
7. Interacting with the dapp in a browser

## Creating Initial Project Structure
truffle unbox pet-shop
truffle init

## Directory structure¶
contracts/: Contains the Solidity source files for our smart contracts. There is an important contract in here called Migrations.sol, which we'll talk about later.
migrations/: Truffle uses a migration system to handle smart contract deployments. A migration is an additional special smart contract that keeps track of changes.
test/: Contains both JavaScript and Solidity tests for our smart contracts
truffle-config.js: Truffle configuration file

- Addresses are Ethereum addresses, stored as 20 byte values.
- memory gives the data location for the variable.
- The memory attribute tells Solidity to temporarily store the value in memory, rather than saving it to the contract's storage. 
- The view keyword in the function declaration means that the function will not modify the state of the contract. Further information about the exact limits imposed by view is available here.

truffle compile

- A migration is a deployment script meant to alter the state of your application's contracts, moving it from one state to the next. For the first migration, you might just be deploying new code, but over time, other migrations might move data around or replace a contract with a new one.

Migrate contract to blockchain(Here Ganache)
truffle migrate

## Testing

truffle test

- DeployedAddresses.sol: When running tests, Truffle will deploy a fresh instance of the contract being tested to the blockchain. This smart contract gets the address of the deployed contract

- Artifacts are information about our contract such as its deployed address and Application Binary Interface (ABI). The ABI is a JavaScript object defining how to interact with the contract including its variables, functions and their parameters.



// Run the lite-server
npm run dev