// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
INTERFACES

Interfaces are similar to abstract contracts and are creatd using interface keyword.
Following are the key characteristics of an interface.

    1.Interface can not have any function with implementation.

    2.Functions of an interface can be only of type external.

    3.Interface can not have state variables.

    4.Interface can have enum, structs which can be accessed using interface name dot notation.
*/

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

interface ICounter {
    //All functions declared in interfaces are implicitly virtual => they can be overridden
    function count() external view returns(uint);
    function increment() external;

}

contract MyContract {
    function incrementcounter(address _counter) external {
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}
