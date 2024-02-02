// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Function {
    function returnmultiplevalues()public pure returns (uint256,bool,uint256)
    {
        return (5, true, 5);
    }


    function variableNames()public pure returns (uint256 x,bool y,uint256 z)  //here we can give the variable name directly.
    {
        return (99, true, 55);
    }

     function Assignvalues()public pure returns (uint256 x,bool y,uint256 z)  
    {
        x = 45;
        y = true;
        z = 54;  
        //In this part we can assign the values to the variables dorectly.
        //In soldity if we not give any value to the var so that time it will prints the defauly value of variables.
        return(x,y,z);
            }

    function destructuring() public pure returns(uint,bool,uint,uint,uint)
    {
        (uint i,bool j, uint k) = returnmultiplevalues(); //here we can assign value directly to returnmultiplevalues function part>
        (uint x, uint y)=(10,20);

        return(i,j,k,x,y);
    }
}

contract secondfunction{
    function secondfunctioncontract(uint x,uint y,uint z,address a,string memory)
    public pure returns(uint){}

function callfunction() external view returns(address){
    return (msg.sender);
   //In Solidity, msg.sender refers to the address of the account (or contract) that called the current function
   //Also msg.sender is address data type
}
}


