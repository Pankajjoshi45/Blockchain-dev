// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract DataLocations{
   string AccountName="Ineuron";

    function displayAccName(string memory _b) public pure returns(string memory){
   
        return _b;
}
    function result(string calldata _a) public pure returns(string calldata){
       
        return _a;
    }
}

//5 state variables-storage + 5 local variables - storage-342738 gas
//1 state variable-storage + 5 local variables - storage-234583 gas
//1 state variable-storage + 5 local variables - memory
//gas for memory function - 26495,23039 gas        using view-23100   using pure-23039
//gas cost for calldata function-25762,22401 gas   using view-22401   using pure-22401

// structure live class code- execute again using storage, memory and calldata
// perform detailed gas cost analysis for all the three data locations



