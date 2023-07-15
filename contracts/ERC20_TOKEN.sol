// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20_TOKEN is ERC20 {
    address private _owner;

    constructor() ERC20 ("Smart_token", "SMART") {
        _owner = msg.sender;
        _mint(msg.sender, 1000000 * 20 ** decimals());
    }
    modifier thisOwner() {
        require(msg.sender == _owner, "Only U can perform the Operation");
        _;
    }
    function mint(address to, uint256 amount) public thisOwner {
        _mint(to, amount);
    }
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    function transferOwnership(address newOwner) public thisOwner {
        _owner = newOwner;
    }
    function getOwner() public view returns (address) {
        return _owner;
    }
}