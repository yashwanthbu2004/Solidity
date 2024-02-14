// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    
    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        require(a >= b, "Subtraction result cannot be negative");
        return a - b;
    }

    
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    
    function div(uint256 a, uint256 b) public pure returns (uint256) {
        require(b > 0, "Cannot divide by zero");
        return a / b;
    }
}
