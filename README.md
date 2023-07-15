## E R C _ T o k e n 
# Token Smart Contract

This project provides an ERC token contract for creating and managing a custom token on a local HardHat network. This contract allows the owner to mint tokens to a specified address and allows users to burn and transfer tokens.

## Prerequisites

Before getting started, ensure that you have the following dependencies installed:

- HardHat: A development environment for Ethereum that enables compiling, testing, and deploying smart contracts.
- Remix: An online Solidity IDE for interacting with smart contracts.
  
## Usage

1. Start a local HardHat network:

   ```shell
   npx hardhat node
   ```

2. Deploy the smart contract to the local network:

   ```shell
   npx hardhat run scripts/deploy.js --network localhost
   ```

3. Open Remix in your browser and connect to the local network.

4. Load the `ERC20_Token.sol` file from the project directory into the Remix.

5. Compile the contract in Remix by selecting the desired Solidity compiler I prefer to use 0.8.0 for it

6. Deploy the contract in Remix by selecting the "Injected Web3" environment and ensuring that your local HardHat network is selected.

7. Use the Remix interface to interact with the deployed contract:

   - As the contract owner, you can mint tokens to a specified address by calling the `mint` function and providing the address and token amount.
   - Any user can burn tokens by calling the `burn` function and specifying the number of tokens to burn.
   - Users can transfer tokens by calling the `transfer` function and providing the recipient's address and the token amount.

## Smart Contract Functions

### `mint(address _to, uint256 _amount)`

Mints new tokens to the specified address.

- `_to`: The address to which the tokens will be minted.
- `_amount`: The amount of tokens to mint.

### `burn(uint256 _amount)`

Burns tokens from the caller's account.

- `_amount`: The amount of tokens to burn.

### `transfer(address _to, uint256 _amount)`

Transfers tokens from the caller's account to the specified address.

- `_to`: The address to which the tokens will be transferred.
- `_amount`: The amount of tokens to transfer.

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to modify the README file according to your specific project requirements.
