// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract election{
    
    struct candidate{
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint=> candidate) public Candidate;

    uint public candidatesCount;

    function Election () public {
       addCandidate("Candidate 1");
       addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private { 
        candidatesCount ++;
        Candidate[candidatesCount]= candidate(candidatesCount, _name,0);
    }
}