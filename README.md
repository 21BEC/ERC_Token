
## ERC20_Token Contract


## DESCRIPTION
This project provides a contract for creating and managing an ERC20 token on a local HardHat network. and the contract allows the owner to mint tokens to the specific address, and can burn tokens from the caller's account, and transfer tokens between accounts, and transfer ownership of the contract.
## USAGE
- compile your code on the VS code 
```shell
   npx hardhat compile
   ```
- after that it will compile the solidity file
- and the next step is to genereate a address for it so for that run
```shell
   npx hardhat run <folder>/<file.js> --network hardhat
   ```
- and after deploying the file just copy the address of it address will be written like

      <fileName.sol><it's address>

- open the remix editor 
- copy that file which you deployed on VS code



## functions explained

- mint(address to, uint256 amount)
Mints new tokens to the specified address.

- to: The address to which the tokens will be minted.
- amount: The amount of tokens to mint.
burn(uint256 amount)
- Burns tokens from the caller's account.

- amount: The amount of tokens to burn.
- transfer(address to, uint256 amount)
- Transfers tokens from the caller's account to the specified address.

- to: The address to which the tokens will be transferred.
- amount: The amount of tokens to transfer.
- transferOwnership(address newOwner)
- Transfers ownership of the contract to the specified address.

- newOwner: The address to which the ownership will be transferred.
- getOwner()
Retrieves the current contract owner's address.

Returns:

 -address: The address of the contract owner.


## License


This project is licensed under the MIT [License](https://choosealicense.com/licenses/mit/)

