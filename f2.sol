// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRoll {
    mapping(address => uint256) public studentRollNumbers;

    function addRollNumber(uint256 roll) public {
        studentRollNumbers[msg.sender] = roll;
    }

    function removeRollNumber() public {
        studentRollNumbers[msg.sender] = 0;
    }

    function getStudentRollNumber() public view returns (uint256) {
        return studentRollNumbers[msg.sender];
    }
}
