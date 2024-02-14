// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    uint256 public yesVotes;
    uint256 public noVotes;

    
    function vote(bool inFavor) public {
        if (inFavor) {
            yesVotes++;
        } else {
            noVotes++;
        }
    }

    
    function getResult() public view returns (string memory) 
    {
        if (yesVotes > noVotes) {
            return "Proposal Passed";
        } else if (yesVotes == noVotes) {
            return "Proposal Tied";
        } else {
            return "Proposal Failed";
        }
    }
}
