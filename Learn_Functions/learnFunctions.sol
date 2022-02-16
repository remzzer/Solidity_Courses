// SPDX-License-Identifier: GPL-3.0
//Debug assignement.sol

pragma solidity ^0.8.0;

abstract contract learnFunctions{

    uint a = 45;

    function remoteControlOpen (bool closedDoor, bool openDoor) public virtual returns (bool);

    function addfValues() public view returns (uint) {
       uint b = 3;
       uint result = a + b;
       return result;
   }

   function addNewValues() public view returns (uint) {
       uint b = 5;
       uint result = a + b;
       return result;
   }

    function multiplyCalculatorByFour(uint b) public view returns (uint) {
        uint result = a * b;
        return result;
    }

     function divideCalculatorByFour(uint b) public view returns (uint) {
        uint result = a / b;
        return result;
    }
}
