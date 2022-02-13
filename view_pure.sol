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

    // setValue modifies the state value
    function SetValue(uint _value) external {
      value = _value; //eth send transaction
      //In remix SetValue is orange because it modifies the state

    }



}
