pragma solidity ^0.5.0;

// import "./EIP20Interface.sol";


contract Election {
    //Model candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // store accounts that have voted
    mapping(address => bool) public voters;

    // store candidate
    // fetch candidate
    mapping(uint => Candidate) public candidates;
    // store candidates count
    uint public candidatesCount;

    event votedEvent (
        uint indexed _candidateId
    );

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private{
        candidatesCount++;

        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId,address payable rec) public{
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount ++;
        // rec.transfer(address(this).balance);
        emit votedEvent(_candidateId);
        // msg.reciever.transfer(address(this).balance);
    }
    function () external payable{
        // address payable x = '0x34beBDb9d9C2145166f91199C653Ee0c53e6b2C0';
        // msg.sender.transfer(address(this).balance);
        // require(address(this).balance);
    }
}


