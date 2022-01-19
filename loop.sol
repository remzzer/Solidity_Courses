//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < '0.9.0';

contract loopContract {
  uint [] public numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  function checkEvenNum(uint _number) public pure returns (bool){
    if (_number % 2 == 0){
      return true;
    } else {
      return false;
    }
  }

  //Count pair number in numbersList[]
  function checkMultiples() public view returns (uint){
    uint count = 0;
    for (uint i=1; i < numbersList.length; i++){
      if (checkEvenNum(numbersList[i])){
        count++;
      }
    }
    return count;
  }
}
