//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//In case, no constructor is defined, a default constructor is present in the contract.
//Constructor code or any internal method used only by constructor are not included in final code.
//A contructor can be either public or internal.
//An internal constructor marks the contract as abstract.

contract Member {
    string name;
    uint age;

    //init name and age when depolyment
    constructor(string memory _name, uint _age) public {
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
    constructor(string memory n, uint a) Member(n, a ) public {}

    function getName() public view returns (string memory){
        return name;
    }
}
