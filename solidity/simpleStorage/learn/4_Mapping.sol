// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Map{

     struct Person {
        string name;
        uint256 favouriteNumber;
    }

    Person[] public listofPeople;


    mapping(string => uint256) public nameToFavouriteNumber;

    function addPerson(string memory _name, uint256 _number) public {
        listofPeople.push(Person(_name,_number));
        nameToFavouriteNumber[_name] = _number;
    } 
}
