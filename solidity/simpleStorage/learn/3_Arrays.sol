// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Arrays{


// intializing the static Array
     uint256[3] listofFavourite;


// similar to class where we can create our own data types
    struct Person {
        string name;
        uint256 favouriteNumber;
    }

    // Person public pat = Person({favouriteNumber:7,name:"Patt"});
    // Person public mariah = Person({favouriteNumber:88,name:"Mariah"});
    // Person public jon = Person({favouriteNumber:69,name:"John"});
    // Person public steve = Person({favouriteNumber:10,name:"Steve"});


// Dynamic array
    Person[] public listofPeople;


    function addPerson(string memory _name, uint256 _number) public {
        
        listofPeople.push(Person(_name,_number));

    }

}