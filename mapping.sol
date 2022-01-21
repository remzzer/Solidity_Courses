//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//Mapping is a reference type as arrays and structs. Following is the syntax to declare a mapping type.
//Mapping allows you to save data and add a key that you specify and then retrieve that info later
//Similar to struct or an array - it is a reference type
//In solidity you can't iterate through a map - you need to store the keys in an array and you can't give size

//Get set and delete a value from mapping

contract learnMapping {
  // key and value - key can be string uint address or bool - value can be anything

    mapping(address => uint) public myMap;

    function getAddress(address _addr) public view returns (uint){
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }

    //1. Deploy the mapping contract and create some keys as addresses and set these keys to unique values
    //2. Remove all the addresses and check to see their updated value.

    //Mapping Assignement:
    //0. Create a unique data types as a struct called Movie and give it two string properties: name and director
    //1. Create a map called movie which takes a uint as a key and the struct Movie as a value.






  struct Movie{
    string name;
    string director;
  }

  mapping(uint => Movie) public movie;


}
