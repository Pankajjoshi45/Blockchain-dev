// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract structure{
    struct Book{
    string title;
    string author;
    uint bookid;
    uint price;
}

//Define a struct - Name of the struct variable to represent the struct
Book book;
function setbook() public {
    book = Book ("Blockchain","Ineuron",2,4000);
}
function getBookID() public view returns(uint){
    return book.bookid;
}
}
