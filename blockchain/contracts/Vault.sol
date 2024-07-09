// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
    mapping(address => uint) vaultBalances;
    
    function deposit() public payable {
        vaultBalances[msg.sender] += msg.value;
    }


    function getVaultBalance(address _user) public view returns (uint) {
        return vaultBalances[_user];
    }

    function withdraw() public {
        uint userBalance = vaultBalances[msg.sender];
        require(userBalance > 0, "No balance to withdraw");
        
        vaultBalances[msg.sender] = 0;
        payable(msg.sender).transfer(userBalance);
    }
}
