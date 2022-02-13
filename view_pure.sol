//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//View functions ensure that they will not modify the state (return values).
//Pure functions ensure that they not read or modify the state (return calculations).

contract MyContract {

    uint value;

    function getValue() external view returns(uint){
        return value; //eth call
        //In remix getValue is blue because it only reads the state
    }

    function getNewValue() external pure returns(uint){
        return 2 + 2;
    }

    // setValue modifies the state value
    function SetValue(uint _value) external {
      value = _value; //eth send transaction
      //In remix SetValue is orange because it modifies the state

    }

    function multiply() public pure returns(uint){
        return 3 * 7;
    }

    function valuePlusThree() public view returns (uint){
        return value + 3;
    }
}

/*
Exercise:
1. create a function called multiply which returns 3 multiplied by 7
2. create another function called valuePlusThree which returns the state variable value + 3
3. successfully deploy the contracts and test for the results.
*/
