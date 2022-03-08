// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
A library contains functions which other contracts can call.

    1. Library can not be destroyed as it is assumed to be stateless.
    2. A library cannot inherit any element.
    3. A library cannot be inherited.

Library
    - no storage, no ether (state var / payable)
    - helps you keep your code DRY (Don't Repeat Yourself)
        - add functionality types
        //uint x
        //x.myFuncFromLibrary()
    - Can save gas

Embedded or linked
    - embedded (library has only internal functions)
        - When the contract will be deployed, all code from the library will be put inside the contract
    - must be deployed and then linked (library has public or external functions)
*/

//Examples
// - safe math (prevent uint overflow)
// - deleting element from array without gaps

library SafeMath {
    function add(uint x, uint y) internal pure returns (uint){
        uint z = x + y;
        require(z >= x, "uint overflow");

        return z;
    }
}

contract TestSafeMath {
    using SafeMath for uint;
    //using A for B means
    //attach functions from library A to type B

    uint public MAX_UINT = 2 ** 256 - 1;

    function testAdd(uint x, uint y) public pure returns (uint) {
        return x.add(y); //First param is x
        //return SafeMath.add(x, 456);
    }
}




/*
The directive using A for B can be used to attach library functions of library A to a given type B.
These functions will use the caller type as their first parameter (identified using self).

Exercice:
1. Copy over the library Search and the contract Test below, rename library Search to Search2
and contract Test to Test2.

2. Using the A for B library pattern assign the new library to an empty array type and rewrite the code
so that we can run the same search hardcoded this time to the value of 4.
*/

library Search2 {
    function indexOf(uint[] storage self, uint value) public view returns(uint res){
        for(uint i=0; i < self.length; i++){
            if (self[i] == value){
                return i;
            }
        }
    }
}

contract Test2 {
    //import library
    using Search2 for uint[];
    uint[] data;
    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent() external view returns(uint res){
        uint value = 4;

        //Use indexOf from Search2.
        uint index = data.indexOf(value);
        return index;
    }
}
