//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.
// With the use of enums it is possible to reduce the number of bugs in your code.


contract enumsLearn {
    enum frenchFriesSize {LARGE, MEDIUM, SMALL} //frenchFriesSize is now a datatype like string, uint etc...
    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    function setSmall() public {
         choice = frenchFriesSize.SMALL; //set choice = 2
    }

    //return frenchFriesSize datatype
    function getChoice() public view returns(frenchFriesSize){
        return choice;
    }

    function getDefaultChoice() public pure returns(frenchFriesSize){
        //return uint(defaultChoice);
        return defaultChoice; //Output: 1 return the pos {0, 1, 2} = Medium
    }
}

//1. create an enum for the color of shirts called shirtColor and set it to the options of either RED or WHITE or GREEN
//2. create a data of shirtColor called defaultChoice which is a constant set to the color blue
//3. create a data of shirColor called choice and don't initiate the value
//4. create a function called setWhite which changes the shirt color of shirtColor to WHITE
//5. create a function getChoice which returns the current choice of shirtColor
//6. create a function getDefaultChoice which returns the default choice of shirtColor

contract EnumEx {
    enum shirtColor {RED, WHITE, BLUE}
    shirtColor constant defaultChoice = shirtColor.BLUE;
    shirtColor choice;

    function setWhite() public {
        choice = shirtColor.WHITE;
    }

    function getChoice() public view returns(uint){
        return uint(choice);
    }

    function getDefaultChoice() public pure returns(shirtColor){
        return defaultChoice;
    }
}
