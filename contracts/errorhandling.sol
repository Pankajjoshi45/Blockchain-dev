// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract A
{
    function doSomething() external 
    {
        //assert(); = In Solidity, assert() is used for validating conditions that should never be false. asset is internally checking
        //require(); = require() is used for validating user inputs and contract state.
        //revert(); = revert() is used to halt execution and revert state changes in case of unexpected conditions and providing a way to handle the errors
    }
}
contract B
{
    A a = new A();
    string public status="Not available";

    function go() public
    {
        try a.doSomething()
        {
            status = "Success";
        } 
        catch 
        {
            status = "Failed";
        }
    }
}




