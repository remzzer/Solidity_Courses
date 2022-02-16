//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract VisibilityModifiers {

    //Difference between external and public
    function testAccessibleFromInternal() public pure returns (uint){
        //return publicFunc(); //Output: 20
        //return externalFunc(); //Output: DeclaratioError: Undeclared identifier. Is not visible.
        //return internalFunc(); //Output: 25 we can access internalFunc from this contract and other contracts that inherit this one
        return privateFunc(); //Output: 30 we can access privateFunc from this contract and that's all
    }

    function externalFunc() external pure returns (uint) {
        return 15;
    }

    function publicFunc() public pure returns (uint) {
        return 20;
    }

    //Difference between internal and private
    function internalFunc() internal pure returns (uint) {
        return 25;
    }

    function privateFunc() private pure returns (uint) {
        return 30;
    }
}

contract DerivedContract is VisibilityModifiers {
    function testDerived() public pure returns (uint){
        //return internalFunc(); //Output: 25
        //return privateFunc();  //DeclaratioError: Undeclared identifier
        //return externalFunc(); //Output: DeclaratioError: Undeclared identifier
        return publicFunc();
    }
}
