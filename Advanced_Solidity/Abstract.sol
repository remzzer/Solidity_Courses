// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/*
Exemple:

The function utterance() was defined, but no implementation was provided (no implementation body { } was given).

abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}


If a contract inherits from an abstract contract and does not implement all non-implemented functions by overriding,
it needs to be marked as abstract as well.

abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}

abstract contract Cat is Feline {
    function utterance() public override returns (bytes32);
}

Why abstract is useful?

It is a way for the designer of the abstract contract to say “any child of mine must implement this method”.
*/

//Base contract
contract X {

    //since function has no implementation we should mark it as virtual
    function y() public pure virtual returns(string memory){}
}

//Derived contract
contract Z is X {
    function y() public pure override returns(string memory) {
        return "hello";
    }
}


//Contract Member is still abstract since it has at least 1 function without body
//Base contract
abstract contract Member {
    string name;
    uint age = 38;

    //because setName has no body the contract is abstract
    function setName() public virtual returns(string memory){}

    function returnAge() public view returns(uint){
        return age;
    }
}

//Derived contract
contract Teacher is Member {
    function setName() public pure override returns(string memory) {
        return "Jean";
    }
}
