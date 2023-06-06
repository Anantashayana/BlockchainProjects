// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Election {
    // Read/write candidate
    string public candidate;

    // Constructor
    function Constructor() public {
        candidate = "Candidate 1";
    }
}