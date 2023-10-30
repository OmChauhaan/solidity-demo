// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Book {
    uint height;
    uint length;
    uint breadth;

    function setDimension(uint _height, uint _length, uint _breadth) public{
        height = _height;
        length = _length;
        breadth = _breadth;
    }

    function getDimension() public view returns(uint, uint, uint) {
        return (height, length, breadth);
    }
}

contract ObjectDemo {
    Book obj = new Book();

    function writeDimension(uint height, uint length, uint breadth) public {
        obj.setDimension(height, length, breadth);
    }
    
    function readDimension() public view returns(uint, uint, uint) {
        return obj.getDimension();
    }

    function getObject() public view returns(Book) {
        return obj;
    }
}