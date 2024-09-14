// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        // before startBroadcast -> not a real tx
        HelperConfig helperConfig = new HelperConfig();
        // the compiler generates a getter function for the unpacked elements of the stuct
        address ethUsdPriceFeed = helperConfig.activeNetworkConfig();

        // after startBroadcast -> real tx
        vm.startBroadcast();
        FundMe fundMe = new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }
}
