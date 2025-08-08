// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;


import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";


contract StorageFactory{

    SimpleStorage public simpleStorage;

    // this function is deploy to a simple storage contract
    function createSimpleStorageContract() public {
            simpleStorage = new SimpleStorage();
    }
}