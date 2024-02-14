// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractInfo {
    address public contractAddress;
    uint256 public contractBalance;

    constructor() {
        contractAddress = address(this);
        contractBalance = address(this).balance;
    }

    function updateContractBalance() public {
        contractBalance = address(this).balance;
    }
}