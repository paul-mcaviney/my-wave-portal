// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint totalWaves;
    constructor() {
        console.log("This is one helluva smart contract!");
    } 

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() view public returns (uint) {
        console.log("We have received %d total waves", totalWaves);
        return totalWaves;
    }
}

