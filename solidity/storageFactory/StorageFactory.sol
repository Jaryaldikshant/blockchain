// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;


import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{

    SimpleStorage[] public listofSimpleStorageContracts;



    // this function is deploy to a simple storage contract
    function createSimpleStorageContract() public {
            SimpleStorage newSimpleStorageContract = new SimpleStorage();
            listofSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageId, uint256 _newSimpleStorageNumber) public {
        // in order to interact with contract we need two things: 
        // Address
        // ABI - Application Binary interface (it will tell our code exactly how it can interact with the other contract)
        
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageId];
        mySimpleStorage.store(_newSimpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageId) public  view returns (uint256){
            SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageId];
        return mySimpleStorage.retrieve();
    }

     
}