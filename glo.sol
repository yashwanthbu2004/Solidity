// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MsgVariablesDemo {
    address public sender;
    uint256 public valueSent;
    bytes public dataSent;
    uint256 public gasLimit;
    address public txOrigin;

    function getSenderAddress() external {
        sender = msg.sender;
    }

    function getValueSentWithTransaction() external payable {
        valueSent = msg.value;
    }

    function getDataSentWithTransaction() external {
        dataSent = msg.data;
    }

    function getGasLimitForTransaction() external {
        gasLimit = gasleft();
    }

    function getTransactionOrigin() external {
        txOrigin = tx.origin;
    }
}
