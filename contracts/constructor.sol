//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract constructor1 {
    //constructor is call only once in the time of contract deployment.
    //there is only one consructor for one contract which is called first in the deployment time.
    //constructor is use for initilize the state variables in solidity.

    uint256 public age;

    // constructor() {
    //     age = 25;    // in this we can initilixe the value with the help of constructor.
    // }


    constructor(string memory name,uint num){
        name = name;
        num = num;
    }  //here we can make a parameterized constructor we can assign the value to the constructor before deployment.
    
}
