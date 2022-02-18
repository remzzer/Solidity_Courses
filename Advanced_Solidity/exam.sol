// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Exercise:

1. Create 3 contracts C, D, and E
2. Do the following in contract C:
    a. Create an integer state variable called data which can only be used internally.
    b Create an integer state variable called info which can be called both inside and outside.
    c. immediately init info to 10 within a constructor.
    d. Create a function called increment (internal).
    e. Write a function called dupdateData (public) which takes an uint arg called a and sets data to the arg.
    f. Write a read only function called getData which returns value of the data (public)
    g. Write a read only function called compute which calculates and returns 2 int arguments a + b

    Do the following in contract D:
    a. Derive contract C to a new variable c and set a new instance of the contract to it.
    b. write a read only function called readInfo which returns the info from contract c (public)

    Do the following in contract E:
    a. inherit contract C into E with the special keyword is.
    b. Create an integer called result (private)
    c. Create a private variable c which inherits the contract C
    d. Immediatly set the var c to anew instance of contract C with a constructor.
    e. Write a function called getComputedResult which sets the values of 23 and 5 to the compute function in contract C. (public)
    f. Create function getResult() that return result (view / public)
    g. create a read only function which returns the info variable from contract C and set the function to be used both exter / inter
*/

contract C {
    uint internal data;
    uint public info;

    constructor () {
        info = 10;
    }

    function increment() internal {

    }

    function dupdateData(uint _a) public {
        data = _a;
    }

    function getData() public view returns(uint){
        return data;
    }

    function compute(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }

}

contract D {
    C public c;
    c = new C;

/*
    constructor(address _addressC) {
        c = C(_addressC);
    }
*/
    function readInfo() public view returns (uint){
        c.info;
    }

}

contract E is C {
    uint private result;
    C private c;

    constructor(address _addressC) {
        c = C(_addressC);
    }
    //?????
    function getComputedResult() public {
        c.compute(23, 5);
    }

    function getResult() public view returns (uint) {
        return result;
    }

    function getInfo() public view returns (uint){
        return c.info;
    }

}
