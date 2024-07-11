// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/UserRegistry.sol";

contract DeployUserRegistry is Script {
    function run() external {
        vm.startBroadcast();

        UserRegistry userRegistry = new UserRegistry();

        vm.stopBroadcast();

        console.log("UserRegistry deployed to:", address(userRegistry));
    }
}