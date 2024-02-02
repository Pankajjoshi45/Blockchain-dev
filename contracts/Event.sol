//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract EventLog {
    //event stores in transaction logs in blockchain.we can't get event in oncontract.
    //up to 3 parameters can be indexed in the event
    //events help you to filter logs on the blockchain
    //you can evaluate condition on a combination of 3 parameters to filter out

    event Log(address indexed sender,string indexed message,uint256 id,uint256 b);
    //when you give the indexed keyword to the parameter so that parameter is allow for querying or data filtering.
    //in solidity we can use only 3indexed para because it can use for less Gas cost and it cannot be difficult for code.
    event Event2(); //empty event with no vslues.

    function testEventWorking() public {
        //emit keyword is use for trigrring the event in blockchain.
        emit Log(msg.sender, "Blockchain is awesome", 4, 6);
        emit Log(msg.sender, "user created successfully!!!", 4, 6);
        emit Event2();
    }
}
