// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract Test {

    mapping(address => bool) private _owners;

    modifier onlyOwners() {
        require(_owners[msg.sender], "caller is not the owner");
        _;
    }

    constructor () {
        allowed.push(msg.sender);
    }



}