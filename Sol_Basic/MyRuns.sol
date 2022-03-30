// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

contract MyRuns {

    uint256 km;

    // Struct for my Runs
   struct Runs {
        uint256 distanceKm;
        string runName;
    }

    // Array to collect my Runs
    Runs[] public runs;
    mapping(string => uint256) public runNameToKm; 

    // Functions
    // 1 store the dinstance
    // function storeKm(uint256 _km) public{
    //     km = _km;
    // }

    // 2 add to the array
    function addRun(string memory _runName, uint256 _distanceKm) public{
        runs.push(Runs({runName : _runName, distanceKm : _distanceKm}));
        runNameToKm[_runName] = _distanceKm;
    }


}