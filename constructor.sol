//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//In case, no constructor is defined, a default constructor is present in the contract.
//Constructor code or any internal method used only by constructor are not included in final code.
//A contructor can be either public or internal.
//An internal constructor marks the contract as abstract.

contract member {
    string name;
    uint age;

    //init name and age when depolyment
    constructor(string memory _name, uint _age)  {
        name = _name;
        age= _age;
    }
}

//1. When deploy Teacher set n & a
//2. n & a are apply to Member
//3. Member set string name = n and uint age = a
//4. getName() return name with value n
contract Teacher is Member //("Rem", 29)
{
    constructor(string memory n, uint a) Member(n, a )  {}

    function getName() public view returns (string memory){
        return name;
    }
}

/*
Exercise:
1. Create a contract called Base which stores fully accessible (inside and outside) integer data upon deployment
2. Create a contract called Derived which derives the data from base and runs a function that always outputs the data to the number 5.
*/

contract base {

    uint num;
    constructor (uint i){
        num = i;
    }
}

contract Derived is Base {
    constructor(string memory str, uint i) Base(i){}

    function getData() public view returns (uint){
        return num;
    }
}
