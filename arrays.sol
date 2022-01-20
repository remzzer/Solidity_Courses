//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//1. How to write an array
//2. pop, push, and length methods
//3. remove elements from array

contract LearnArrays{
    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myArray3;

    function pushEl(uint num) public {
            myArray.push(num);
    }

    function popEl() public {
            myArray.pop();
    }

    function getLength() public view returns (uint){
            return myArray.length;
    }

    function remove(uint index) public {
        delete myArray[index];
    }
}

//Exercise

//1. Create an Empty array called changeArray
//2. Create a function called removeElment which sets the index argument of the array to the last element in the array
//3. remove the last index from that functionwith the pop methods
//4. Create a function called test which pushed 1 2 3 4 into changeArray
//5. remove the element 2 from the array when the contract is called

contract Exercise{
    uint[] public changeArray;
    uint i;

    function removeElement(uint _index) public {
        changeArray[_index] = changeArray[changeArray.length -1];
        changeArray.pop();
    }

   function test () public {
       for (i = 1; i <= 4; i++){
            changeArray.push(i);
       }
   }

   function returnArray() public view returns(uint[] memory){
       return changeArray;
   }

}
