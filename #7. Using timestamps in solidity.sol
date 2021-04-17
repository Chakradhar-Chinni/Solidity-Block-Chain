pragma solidity ^0.4.1;

contract MyContract
{
    uint256 public peopleCount=0;
    mapping(uint => Person) public people;
    
    uint256 OpeningTime = 1618638090;
    modifier onlyWhileOpen()
    {
        require(block.timestamp >= OpeningTime);  //performing a transaction after a certain time
        _;
    }
    
    struct Person
    {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName,string memory _lastName) public onlyWhileOpen {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal{
        peopleCount += 1;
    }
}

//The value in uint256 OpeningTime is the current value of eponch converter(epochconverter.com) 
//the function allows the transaction on the smart contract 'onlyWhileOpen' only if the timestamp has crossed the OpeningTime 'modifier onlyWhileOpen()'
