// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Error: Only owner allowed to call this function");
        _;
    }

    function deposit() public payable onlyOwner {
        balance += msg.value;
    }

    function getVaultBalance() public view returns (uint) {
        return balance;
    }

    function withdraw() public onlyOwner {
        require(balance > 0, "Error: Insufficient balance");
        payable(owner).transfer(balance);
        balance = 0;
    }
}
