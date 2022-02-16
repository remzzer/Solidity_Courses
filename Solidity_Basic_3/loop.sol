//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < '0.9.0';

contract loopContract {
  uint [] public longList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  uint [] public numberList = [1, 4, 36];

  //Check if input is even
  function isEvenNum(uint _number) public pure returns (bool){
    if (_number % 2 == 0){
      return true;
    } else {
      return false;
    }
  }

  //Check if input is in numberList
  function checkIfExist(uint _input) public view returns (bool){
    for (uint i=1; i < numberList.length; i++){
      if (_input == numberList[i]){
        return true;
      }
    }
    return false;
  }

  //Count even num
  function checkEvenNum() public view returns (uint){
    uint count = 0;
    for (uint i=1; i < longList.length; i++){
      if (isEvenNum(longList[i])){
        count += 1;
      }
    }
    return count;
  }
}

//Looping Practice:

//1. Create a contract myLoopingPracticeContract and place all the following code within:
//2. Create a list that ranges fom 1 to 20 called longList
//3. Create a list called c of the following numbers: 1, 4, 36, int56
//4. Create a function that loops through numbersList and returns a true value if the number
//that the user inputs exists in the list otherwise it should return false
//5. Create a function that loops through and returns how many even numbers there are in the longList
