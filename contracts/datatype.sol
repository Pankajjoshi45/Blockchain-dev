// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.6;  //^ symbol is use for finds the better verion of 0.8.6 or even use only this version.
contract Primitive_datatype{
bool public boo1 = true;
bool public boo2 = false;
uint8 public u8 = 10;
uint16 public u16 = 58;
uint public u256 = 2651331;
int8 public i8 = 74;

int public minInt = type(int).min;
int public maxInt = type(int).max;
address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;   //in the starting of a address is start from 0x because the 0x is tells about the byte data type.
// The length of the address datatype is 20bytes or 160bits.
}
