pragma solidity >=0.4.22 <0.8.0;

contract Election {
    //Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //Store Candidate
    //mapping is like associative array(hash)
    mapping(uint => Candidate) public candidates;

    //map of voters
    mapping(address => bool) public voters;

    //Store Candidate Count
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    //Adding a candidate
    //private so only contract can access
    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);
        candidates[_candidateId].voteCount ++;
        voters[msg.sender] = true;        
    }
}