//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/* Define Fallback Functions:
1. Connot have a name
2. Does not take any inputs
3. Does not return any outputs
4. Must be declared as external

Why use it? When you call functions that does not exist - or send ether to a contract by send, transfer or call
*/

contract Fallback {

    event Log(uint gas);

    fallback () external payable {
        //not recommended to write much code in here -  because the function will fail if it uses too much gas

        //invoke the send method: we get 2300 gas which is enough to emit a log
        //invoke the call method: we get all the gas
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint){
        //return the stored balance of the contract
        return address(this).balance;
    }
}
