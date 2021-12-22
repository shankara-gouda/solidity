// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.4.24;

contract mycontract {
  uint public peopleCount = 0;
  mapping(uint => person) public people;
  
  address Owner;
  
  modifier onlyOwner() {
    require(msg.sender == Owner);
    _;
  }

  struct person {
    uint _id;
    string _firstname;
    string _lastname; 
  }
  constructor() public {
    Owner = msg.sender;  
  }

  function addPerson(string memory _firstname, string _lastname) public onlyOwner {
      increamentCount();
    people[peopleCount] = person(peopleCount, _firstname, _lastname);
  }
    
    
    function increamentCount() internal {
    peopleCount += 1;
    
   }
}

