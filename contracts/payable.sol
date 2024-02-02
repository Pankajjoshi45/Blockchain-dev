//SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.6;

contract Payable {
    //payable address can send and receive ether
    address payable public owner;
    //payable is a modifier
    //payable constructor can receive ether

    constructor() payable {
        owner = payable(msg.sender); //
    }

    //this function can receive ether
    function deposit() public payable {}

    //this cannot accept ethers
    function nonPayable() public {}

    function withdraw() public {
        uint256 amount = address(this).balance;
        //the address(this) is point the current smart contract and calculate this contract balance.

        (bool success, ) = owner.call{value: amount}("Amount withdraw from the contract"); 
        //here the owner.call function is used for sent money.
        //("") indicates fallback function 

        require(success, "Failed to receive ether");
    }

    function transfer(address payable _to, uint256 _amount) public payable {
        (bool success, ) = _to.call{value: _amount}("");//to.call is use for send the ether into the recever account.
        require(success, "Failed to send ether to address");
    }
}
