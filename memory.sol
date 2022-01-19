//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < '0.9.0';

contract memoryAndStorage {

  //memory: much like RAM, Memory in Solidity is a temporary place to store data whereas Storage holds data
  //Solidity Contract can use any amount of memory during the execution but once the execution stops -> Memory is wiped off for the next execution

  string greetings = "hello";

  function sayHello() public view returns(string memory){
    return greetings;
  }

  function changeGreeting(string memory _string) public{
    greetings =  _string;
  }

    // strings are too expensive computationally to get length
  function getChat() public view returns(uint){
    //return greetings.length; //Output: Error
    
    //convert strings to bytes:
    bytes memory stringToBytes = bytes(greetings);
    return stringToBytes.length;
  }
}
