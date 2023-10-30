// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MapDemo {
    mapping(uint=>string) public students;
    function input(uint rollNo, string memory name) public {
        students[rollNo] = name;
    }

    enum Days {Monday, Tuesday, WednesDay, Thursday, Friday, Saturday, Sunday}
    Days public day;
    mapping(Days => string) public dayMap;

    function buildDaysMapping() public {
        dayMap[Days.Monday] = "Monday";
        dayMap[Days.Tuesday] = "Tuesday";
        dayMap[Days.WednesDay] = "WednesDay";
        dayMap[Days.Thursday] = "Thursday";
        dayMap[Days.Friday] = "Friday";
        dayMap[Days.Saturday] = "Saturday";
        dayMap[Days.Sunday] = "Sunday";
    }

    function returnDay(Days d) public view returns(string memory) {
        return dayMap[d];
    }

}