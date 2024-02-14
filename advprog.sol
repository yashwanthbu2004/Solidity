// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BiddingProcess {
    address public highestBidder;
    uint public highestBid;

    function placeBid() external payable {
        require(msg.value > 0, "Bid amount must be greater than 0");

        if (msg.value <= highestBid) {
            
            revert("Bid amount is less than or equal to the current highest bid");
        }

        if (highestBidder != address(0)) {
            
            payable(highestBidder).transfer(highestBid);
        }

        
        highestBidder = msg.sender;
        highestBid = msg.value;
    }

    function getHighestBid() external view returns (address, uint) {
        return (highestBidder, highestBid);
    }
}
