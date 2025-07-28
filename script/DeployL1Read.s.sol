// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script, console2} from "lib/forge-std/src/Script.sol";
import {L1Read} from "../src/L1Read.sol";

contract DeployL1Read is Script {
    function run() external {

        // deployer
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        vm.createSelectFork("hyperevm");

        vm.startBroadcast(deployerPrivateKey);

        // deploy read contract
        L1Read l1read = new L1Read();
        console2.log("L1Read contract deployed on HyperEVM to: ", address(l1read));

        vm.stopBroadcast();
    }
}
