// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract EtherUnits{

//wei keyword is used for Ether units
    uint public OneWei= 1 wei; // 1 wei valuein solidity is 10^1.
    bool public isOneWei= 1 wei ==1;

    uint public oneEther= 1 ether; // put space b/w 1 and ether otherwise it will give an error.same into the wei case.
 // one ether value in solidity is 10^18

    //divided in 2 parts
    //first part- evaluate the expression on right side
    //second part- assign the evaluated expression to ther variable
    bool public isOneEther = 1 ether== 1;
   
}
