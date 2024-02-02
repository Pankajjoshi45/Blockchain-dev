// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract gas1{
    uint public i=0;

    function runForever() public {
        while(true){
            i=i+1;  //infinite loop
        }
    }
}
