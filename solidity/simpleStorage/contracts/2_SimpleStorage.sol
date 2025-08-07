// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SimpleStorage{

    struct Person {
        string name;
        uint256 favouriteNumber;
    }

// Public variable, initialized to 0 by default
    uint256 public favouriteNumber;


// Store a number in the contract's state
    function store(uint256 number) public {
        favouriteNumber = number;
    }

// Read the stored number from the contract
     function retrieve() public view returns(uint256){
        return favouriteNumber;
    }


// Return a fixed number (does not read or modify state)
    function retrieving() public pure returns(uint256){
        return 7;
    }

// Dynamic array
    Person[] public listofPeople;

// mapping a person's name to their favorite number
    mapping(string => uint256) public nameToFavouriteNumber;

// Adds a new person to the array and updates the mapping
    function addPerson(string memory _name, uint256 _number) public {
        listofPeople.push(Person(_name,_number));
        nameToFavouriteNumber[_name] = _number;
    } 
}
