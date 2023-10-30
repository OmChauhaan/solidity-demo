// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StructDemo {
    student public s1;
    constructor(uint _rollNo, string memory _name) {
        s1.rollNo = _rollNo;
        s1.name = _name;
    }

    function change(uint rno, string memory name) public {
        // s1.rollNo = rno;
        // s1.name = name;
        student memory newStudent = student({
            rollNo:rno, 
            name:name
        });
        s1=newStudent;
    }
}

struct student {
    uint rollNo;
    string name;
}
    