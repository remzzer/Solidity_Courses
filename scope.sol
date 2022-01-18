//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//VARIABLE SCOPE - Function & Variables

// Private = You can only call the function inside the contract
// Internal = called only within the contract OR other contracts that inheit the smart contract (slightly less restrictive than public)
// External =
// Public = You can call the function from outside the smart contract as well inside the smart contract

contract Scope {
    uint public data = 10; // state variable

    function x() public view returns(uint){
        //Modify function x so that you return 25 for data wthout changing the data of the state variable
        uint newData = data + 15;
        return newData;
    }

    function y() public view returns (uint){
        return data;
    }
}
