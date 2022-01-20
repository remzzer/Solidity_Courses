//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//1. How to write an array
//2. pop, push, and length methods
//3. remove elements from array

contract learnArrays{
    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myArray3;

    function pushEl(uint num) public {
            myArray.push(num);
    }

    function popEl() public {
            myArray.pop();
    }

    function getLength() public view returns (uint){
            return myArray.length;
    }
}
