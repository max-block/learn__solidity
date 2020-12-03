// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract Test {

    int256 value;

    constructor () public {
        value = 10;
    }

    function setValue(int256 _value) public {
        value = _value;
    }

    function getDoubleValueAndBlockNumber() public view returns (int256 doubleValue, uint256 blockNumber) {
        doubleValue = value;
        blockNumber = block.number;
    }

}