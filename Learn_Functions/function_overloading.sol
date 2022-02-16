//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
Function Overlaoding:

You can have multiple definitions for the same function name in the same scope.
The definition of the function must differ from each other by the types and/or the number of arguments in the argument list.
You cannot overload function declarations that differ only by return type.
*/

contract FunctionOverloading {

    function x(uint _arg1, uint _arg2) public pure returns (uint){
        return _arg1 + _arg2;

    }

    function x(uint _arg1, uint _arg2, uint _arg3) public pure returns (uint){
        return _arg1 + _arg2 + _arg3;
    }

    function  getTwoX (uint _arg1, uint _arg2) public pure returns (uint){
        return x(_arg1, _arg2);
    }

    function  getThreeX (uint _arg1, uint _arg2, uint _arg3) public pure returns (uint){
        return x(_arg1, _arg2, _arg3);
    }
}

/*
Exercise:
1. Create two functions with the same name that return the sum of their arguments.
One function which takes two arguments and another function which takes three arguments.
2. Create two other functions which can call each sum function and return their various sums.
*/
