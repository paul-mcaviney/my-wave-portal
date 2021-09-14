// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint totalWaves;

    event NewWave(address indexed from, uint timestamp, string message);

    struct Wave {
        address waver;      // The address of the user who waved
        string message;     // The message the user sent
        uint timestamp;     // The timestamp the user waved
    }

    Wave[] waves;

    constructor() {
        console.log("This is one helluva smart contract!");
    } 

    function wave(string memory _message) public {
        totalWaves += 1;
        console.log("%s has waved w/ message %s", msg.sender, _message);

        // Store the wave data in an array
        waves.push(Wave(msg.sender, _message, block.timestamp));

        emit NewWave(msg.sender, block.timestamp, _message);
    }

    function getAllWaves() view public returns (Wave[] memory) {
        return waves;
    }

    function getTotalWaves() view public returns (uint) {
        console.log("We have received %d total waves", totalWaves);
        return totalWaves;
    }
}

