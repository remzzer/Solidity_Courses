// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Libraries are similar to Contracts but are mainly intended for re use. A library contains functions which other contracts can call.
Solidity have certain restrictions on use of a Library. Following are the key characteristics of a Solidity Library.

    1. Pure and view functions can only be called from outside the library
    2. Library can not be destroyed as it is assumed to be stateless.
    3. A library cannot inherit any element.
    4. A library cannot have state variables.
    5. A library cannot be inherited.

*/

library Search {
    function indexOf(uint[] storage self, uint value) public view returns(uint){
        for(uint i=0; i < self.length; i++){
            if (self[i] == value){
                return i;
            }
        }
    }
}

contract Test {
    uint[] data;
    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }
    function isValuePresent(uint val) external view returns(uint){
        uint value = val;

        //Call Search library
        uint index = Search.indexOf(data, value);
        return index;
    }
}
