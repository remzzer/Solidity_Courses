// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Restricted Access to a Contract is a common practice.

By default, a contract state is read-only unless it is specified as public.
We can restrict who can modify the contract's state or call a contract's functions using modifiers.

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

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time, "function called too early!");
         _;
    }

    //Write a function that will change the owner address
    function swapOwner(address _owner) onlyBy(owner) public{
        owner = _owner;
    }

    //write a function that can disown the current owner
    function disOwn() onlyBy(owner) onlyAfter(creationTime + 3 weeks) public{
       delete owner;
    }

    /*
    Exercice:
    1. Create a modifier called costs which takes an _amount parameter
    2. Require that msg.value is >= to the amount
    3. if msg.value is not >= to the amount return a string => "Not enough ETH"
    4. Write a function called forceOwnerChange which takes an address called _newOwner and is payable
    5. Add a modification to the signature so that the function need 200 ETH to execute.
    6. Set the owner of the contract to the new owner of the address.
    7. BONUS -> Figure out how to make the functon actually run.
    */

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ETH!");
        _;
    }

    function forceOwnerChange(address _newOwner) external payable costs(200 ether){
        owner = _newOwner;
    }

}
 
