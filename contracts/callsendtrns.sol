//SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.6;

contract SendingFunds{
    function sendEtherTransfer(address payable _to) public payable{
        //this is not recommened
        _to.transfer(msg.value); //2300 gas limit
    }

    function SendEtherSend(address payable _to) public payable{
        bool sent=_to.send(msg.value);
         //2300 gas limit of send function
        require(sent,"Failed to send ether ");
    }

    function SendEtherCall(address payable _to) public payable{
        (bool sent,)=_to.call{gas:10000,value:msg.value}(""); //("") indicates fallback function
        require(sent,"failed to send ether");
    }
}
