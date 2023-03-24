// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ArbitrageContract.sol";

contract ArbitrageContractTest is Test {
    ArbitrageContract public arbitrageContract;

    function setUp() public {
        arbitrageContract = new ArbitrageContract();
    }

    function testIncrement() public {
        address pool = 0x5457069F4E87d43fCBd9106c8bdE12BDf224B885;
        uint256 amountToBuy = 999888777666555111;
        uint256 amountToSell = 9876123412;
        address walletToTransfer = 0x5400000000000000000000000000000000009876;

        arbitrageContract.arbitrageEmpty();
    }

    function testArbitrageEmpty() public {
        arbitrageContract.arbitrageEmpty();
    }

    function testArbitrageOneParameter() public {
        arbitrageContract.arbitrageOneParameter(9);
    }

    function testArbitrageTwoParameter() public {
        arbitrageContract.arbitrageTwoParameter(
            9,
            0xbAAaaaaaAAaAAaaAaAaAaaaaaaaaaaaaaaaAAAAb
        );
    }

    function testArbitrageThreeParameter() public {
        arbitrageContract.arbitrageThreeParameter(
            9,
            0xbAAaaaaaAAaAAaaAaAaAaaaaaaaaaaaaaaaAAAAb,
            true
        );
    }

    function testArbitrage_1_1_4() public {
        bytes memory dataToSend = hex"AABB";
        arbitrageContract.arbitrage_1(dataToSend);
    }

    function testArbitrage_1_2() public {
        bytes
            memory dataToSend = hex"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
        arbitrageContract.arbitrage_1(dataToSend);
    }

    function testArbitrage_1_3() public {
        bytes
            memory dataToSend = hex"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABB";
        arbitrageContract.arbitrage_1(dataToSend);
    }

    function testArbitrage_1_4() public {
        bytes
            memory dataToSend = hex"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABB";
        arbitrageContract.arbitrage_1_1(dataToSend, true);
    }

    function testArbitrage_1_5() public {
        bytes
            memory dataToSend = hex"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABB";
        arbitrageContract.arbitrage_1_2(dataToSend, true, 4);
    }
}
// 32 = AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
// 33 = AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABB
// 0x000000000000000000000000000000000000000000000435f2e3f70000000000
