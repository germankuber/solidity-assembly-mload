// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ArbitrageContractFallback.sol";

contract ArbitrageContractFallbackTest is Test {
    ArbitrageContractFallback public arbitrageContractFallback;

    function setUp() public {
        arbitrageContractFallback = new ArbitrageContractFallback();
    }

    function testArbitrage_1_6() public {
        bytes memory dataToSend = hex"AABB";
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_7() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_3()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_8() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_4()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_9() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_5()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_10() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_6()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_11() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_7()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_12() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_8()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        console.logBytes(dataToSend);
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testArbitrage_1_13() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("arbitrage_9()")));
        bytes memory dataToSend = abi.encodePacked(SELECTOR, hex"AABB");
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_14() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_14()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_15() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_15()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf7111111111122222222233333333211111111117"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_16() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_16()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf711111111112222222223333333321111111111700000000000000000000000000000000000000000000152d02c7e14af67fffff"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_17() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_17()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf7111111111122222222233333333211111111117000000000000152d02c7e14af67fffff"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_18() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_18()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf7111111111122222222233333333211111111117000000000000152d02c7e14af67fffff"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_19() public {
        arbitrageContractFallback.transferFrom_19(
            0xFABAAaaaAADaaAAaAAEaaaAaaBaAAAabaaabAbaF,
            0x7111111111122222222233333333211111111117,
            99999999999999999999999
        );
    }

    function testTransferFrom_20() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_20()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf7111111111122222222233333333211111111117000000000000152d02c7e14af67fffff"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }

    function testTransferFrom_21() public {
        bytes4 SELECTOR = bytes4(keccak256(bytes("transferFrom_21()")));
        bytes memory dataToSend = abi.encodePacked(
            SELECTOR,
            hex"FAbAAAAAAAdAAAAAAAeAAAAAAbAAAAABAAABABAf7111111111122222222233333333211111111117000000000000152d02c7e14af67fffff"
        );
        address(arbitrageContractFallback).call(dataToSend);
    }
}
// 32 = AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
// 33 = AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABB
// 0x000000000000000000000000000000000000000000000435f2e3f70000000000
