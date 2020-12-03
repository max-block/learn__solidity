// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract Test {

    int256 public value;
    address private owner;

    event ValueChanged(int256 newValue);

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner can do it");
        _;
    }

    constructor () {
        owner = msg.sender;
        value = 10;
    }

    function setValue(int256 newValue) public {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function getDoubleValueAndBlockNumber() public view returns (int256 doubleValue, uint256 blockNumber) {
        doubleValue = value;
        blockNumber = block.number;
    }

}