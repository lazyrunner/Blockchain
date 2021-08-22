pragma solidity >=0.4.22 <0.8.0;

contract Election {
    //Store Candidate 
    //Read candidate
    // Constructor - run when deploy into blockchain
    
    //state variable accessible inside contract and represent data
    string public candidate;

    constructor() public {
        candidate = "Candidate 1";

    }
}