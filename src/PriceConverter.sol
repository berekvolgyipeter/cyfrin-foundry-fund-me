// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library PriceConverter {
    function getPrice(AggregatorV3Interface priceFeed) internal view returns (uint256) {
        // chainlink pricefeeds come with 8 digit precision (2000 would be 2000e8)
        (, int256 answer,,,) = priceFeed.latestRoundData();
        // ETH/USD price in 18 digits -> 1 ETH = 1e18 WEI
        return uint256(answer * 1e10);
    }

    function getEthAmountInUsd(uint256 ethAmount, AggregatorV3Interface priceFeed) internal view returns (uint256) {
        uint256 ethUsdPrice = getPrice(priceFeed);
        uint256 ethAmountInUsd = (ethUsdPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }
}
