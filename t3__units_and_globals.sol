// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract Test {

    int256 value;

    constructor () {
        value = 10;
    }

    function getNow() public view returns (uint) {
        return block.timestamp;
    }

}