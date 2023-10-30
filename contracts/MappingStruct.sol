// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MapDemo1 {
    struct Student {
        string name;
        uint class;
        uint age;
    }

    mapping(uint=>Student) public studentData;

    function input(uint rollNo, string memory name, uint class, uint age) public {
        studentData[rollNo] = Student({name:name, class:class, age:age});
    }
}