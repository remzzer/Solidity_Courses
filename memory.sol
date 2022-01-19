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


//1.Create a function that return a color
//2.Create a function that change color
//3.Count char from new color (string)
contract colorString {
    string favoriteColor = "blue";

    function getColor() public view returns(string memory){
        return favoriteColor;
    }

    function changeColor(string memory _color) public returns(string memory){
        return favoriteColor = _color;
    }

    function countChar(string memory _str) public pure returns(uint){
        bytes memory newStr = bytes(_str);
        return newStr.length;
    }
}
