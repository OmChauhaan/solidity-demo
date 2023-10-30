// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ArrDemo {
    // uint[3] public arr=[10,20,30];

    // function insert(uint index, uint element) public {
    //     arr[index]=element;
    // }

    // function len() public view returns(uint) {
    //     return arr.length;
    // }

    // string[5] public students=["Ram", "Naveen", "Jhon", "Smith"];

    // function  getStudent(uint index) public view returns(string memory) {
    //     return students[index];
    // }

    uint[] public dynamicArr;

    function pushElement(uint item) public {
        dynamicArr.push(item); //inserting an element at end
    }

    function popElement() public {
        return dynamicArr.pop(); //removing last element
    }

    function len() public view returns(uint) {
        return dynamicArr.length;
    }
}