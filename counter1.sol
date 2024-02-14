// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint256 public counter;

    function increment() public {
        counter++;
    }

    function decrement() public {
        require(counter > 0, "Counter cannot be negative");
        counter--;
    }
}
