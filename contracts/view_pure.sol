//SPDX_License-Idemtifier:MIT
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

    //View function is declare that no state can be changed only it can be read.(Partial abstraction)
    //Pure function is declare that no state will be changed or read.(complete abstraction)
    //View and Pure are part of oops the concept where it can relate that is called "Abstraction".

contract ViewPure{

    //internal
    uint x=1;

    function addX(uint y) public view returns(uint){

        //we are able to read the value of x 
        uint c=x+y;
        return c;
    }
    // here in this view function in the output value they can read only the x value first then after that it will add this 
    //X value in the C. we can't modify the x value in output it will only read bcoz the x value is used as internal variable

    function AddX(uint i,uint j) public pure returns(uint){
        uint d=i+j;
        return d;
        //In Solidity An object-oriented programming language , a function that doesn't read or modify the variables of the state is called a pure function.
        //It can only use local variables that are declared in the function and the arguments that are passed to the function to compute or return a value.
    }
}
