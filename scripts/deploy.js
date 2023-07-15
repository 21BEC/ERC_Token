const { ethers } = require("hardhat");

async function main() {
    const [deployer] = await ethers.getSigners();

    const ERC20_TOKEN = await ethers.getContractFactory("ERC20_TOKEN");
    const erc20_token = await ERC20_TOKEN.deploy();

    console.log("deploying contract with the account:", erc20_token.address);

    console.log("ERC20_TOKEN address:", erc20_token.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1); // exit with error code if something goes wrong
    });