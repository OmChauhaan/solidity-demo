// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StorageDemo {
    string[] public vehicles=["Bus", "Car", "Bike"]; //state variable

    function mem() public view {
        string[] memory v1=vehicles;
        v1[0]="Ship";
    }

    function sto() public {
        string[] storage v1=vehicles;
        v1[0]="Ship";
    }
}