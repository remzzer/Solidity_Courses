//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//VARIABLE SCOPE - Function & Variables

// Private = You can only call the function inside the contract
// Internal = called only within the contract OR other contracts that inheit the smart contract (slightly less restrictive than public)
// External = Function can only be called outside of the contract or using "this" if you are inside
// Public = You can call the function from outside the smart contract as well inside the smart contract

contract VisibilityModifiers {
    uint public data = 10; // state variable

    function x() external pure returns(uint){
        //Modify function x so that you return 25 for data wthout changing the data of the state variable
        uint newData = 25;
        return newData;
    }

    function y() public view returns (uint){
        return this.x();
        //Call x() this way -> Internal
        //Call this.x() -> using this. to call it externaly
    }
}
