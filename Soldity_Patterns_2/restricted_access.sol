// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Restricted Access to a COntract is a common practice.

By default, a contract state is read-only unless it is specified as public.
We can restrict who ca modify the contract's state or call a contract's functions using modifiers.

Let us build a contract with modified restricted access with the following common writeouts:

    onlyBy - only the mentioned caller can call this function.
    onlyAfter - called after certain time period.
    costs - call this function only if certain value is provided.

*/

contract RestrictedAccess {

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    //write a modifier that will require the current caller to be equal
    //to an account address which we set as an input in the modifier and
    //if the requirement fails send a message that says - "Sender not authorized"

    modifier onlyBy(address _account){
        require(msg.sender == _account, "Sender not authorized");
        _;
    }

    //Write a function that will change the owner address
    function swapOwner(address _owner) public {
        owner = _owner;
    }

}
