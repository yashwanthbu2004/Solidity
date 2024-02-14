// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Election {
    uint256 public candidate1Votes;
    uint256 public candidate2Votes;

    function vote(uint256 _candidate) external {
        require(_candidate == 1 || _candidate == 2, "Invalid candidate");
        
        if (_candidate == 1) {
            candidate1Votes++;
        } else {
            candidate2Votes++;
        }
    }

    function getResult() external view returns (string memory) {
        if (candidate1Votes > candidate2Votes) {
            return "Candidate 1 Wins";
        } else if (candidate1Votes < candidate2Votes) {
            return "Candidate 2 Wins";
        } else {
            return "Election Tied";
        }
    }
}
