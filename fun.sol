// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractInfo {
    function getContractAddress() external view returns (address) {
        return address(this);
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
