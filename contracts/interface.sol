//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
 
interface calcfunction{
    //abstract contract calcfunction{}
    //when we have one abstract function we use interface insteaed of abstract contract.because interface can only have abstracts mehods.
    //also here we cannnot deploy the interface it will only declared.
    function op() external  returns (uint256);
    //external means that the function can only be called from outside the contract. External functions are intended to be called by other contracts or transactions, but not by functions within the same contract.
}

contract add is calcfunction 
{
    uint256 public num1 = 20;
    uint256 public num2 = 30;

    function op() public view override returns (uint256) {
        // override is compulsary in abstract method but optional in the term of interface.
        return num1 + num2;
    }
}