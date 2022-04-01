// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

// Price Feed using ChainLink Interface: Aggregator V3
/**
     * Network: Rinkeby
     * Aggregator: ETH/USD
     * Address: 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
     * Contract Address ETH/USD on Rinkeby Net: https://docs.chain.link/docs/ethereum-addresses/
     * Example: https://docs.chain.link/docs/get-the-latest-price/
     * Call functions: version() and latestRoundData():
     * * GitHub: https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol
**/

// Interface:two approaches  
// 1- Copy/Paste the interface code here
// 2- Import the interface:
// 2-A Remix: import the contract from GitHub
// import "@chainlink/contracts/src/v0.7/interfaces/AggregatorV3Interface.sol";
// 2-B VSC: import the files from same directory
import "./AggregatorV3Interface.sol";

contract GetETHUSD {

// Call interface function version() >> to View the interface version
function getVersion() public view returns(uint256) {
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
    return priceFeed.version();
}

// Call function latestRoundData()
    //   uint80 roundId,
    //   int256 answer,
    //   uint256 startedAt,
    //   uint256 updatedAt,
    //   uint80 answeredInRound
function getLastPride() public view returns(int256,uint256, uint80) {
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
     // return priceFeed.latestRoundData();
    (,int256 answer,,uint256 updatedAt, uint80 answeredInRound) = priceFeed.latestRoundData();
    return (answer, updatedAt, answeredInRound);

    }
}