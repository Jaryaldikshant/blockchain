// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {SimpleStorage} from "./SimpleStorage.sol";


// this AddFiveStorgae will inherit everything from SimpleStorage
contract AddFiveStorage is SimpleStorage {

    function sayHello() public pure returns (string memory){
        return "Hello....;";
    }

    // +5
    // overrides
    // virtual override

function store(uint256 _newNumber) public override  {favouriteNumber = _newNumber + 5;}
        
}
