// SPDX-License-Identifier: UNLICENSED
import "forge-std/console.sol";

pragma solidity ^0.8.13;

contract ArbitrageContract {
    event Arbitrage(
        address _pool,
        uint256 _amountToBuy,
        uint256 _amountToSell,
        address _walletToTransfer
    );
    event CallDataReceive(bytes _data);
    event SelectoSignatureEvent(bytes4 _data);
    bytes4 private constant SELECTOR =
        bytes4(keccak256(bytes("arbitrage(address,uint256,uint256,address)")));

    // function arbitrage(
    //     address _pool,
    //     uint256 _amountToBuy,
    //     uint256 _amountToSell,
    //     address _walletToTransfer
    // ) public {
    //     emit CallDataReceive(msg.data);
    //     emit SelectoSignatureEvent(SELECTOR);
    //     emit Arbitrage(_pool, _amountToBuy, _amountToSell, _walletToTransfer);
    // }

    function arbitrage(
        address _pool,
        uint256 _amountToBuy,
        uint256 _amountToSell,
        address _walletToTransfer
    ) public {
        bytes memory dataToRead = msg.data;
        emit CallDataReceive(msg.data);
        emit SelectoSignatureEvent(SELECTOR);
        emit Arbitrage(_pool, _amountToBuy, _amountToSell, _walletToTransfer);

        bytes32 firstRead;
        assembly {
            firstRead := mload(add(dataToRead, 0x9))
        }
        console.logBytes32(firstRead);
    }

    function arbitrageEmpty() public {
        bytes memory dataToRead = msg.data;
        _logData();

        bytes32 firstRead;
        assembly {
            firstRead := mload(dataToRead)
        }
        console.logBytes32(firstRead);
    }

    function arbitrageTwoParameter(uint8 _value, address _address) public {
        bytes memory dataToRead = _logData();

        bytes32 firstRead;
        assembly {
            firstRead := mload(dataToRead)
        }
        console.logBytes32(firstRead);
    }

    function arbitrageThreeParameter(
        uint8 _value,
        address _address,
        bool _isReady
    ) public {
        bytes memory dataToRead = _logData();

        bytes32 firstRead;
        assembly {
            firstRead := mload(dataToRead)
        }
        console.logBytes32(firstRead);
    }

    function arbitrageOneParameter(uint8 _value) public {
        bytes memory dataToRead = _logData();

        bytes32 firstRead;
        assembly {
            firstRead := mload(dataToRead)
        }
    }

    function arbitrage_1(bytes memory data) public {
        bytes memory data = _logData();
        console.logBytes(msg.data);
        bytes20 pool;
        assembly {
            pool := mload(add(data, 0x9))
        }
    }

    function arbitrage_1_1(bytes memory data, bool a) public {
        bytes memory data = _logData();
        bytes20 pool;
        assembly {
            pool := mload(add(data, 0x9))
        }
    }

    function arbitrage_1_2(bytes memory data, bool a, uint8 b) public {
        bytes memory data = _logData();
        bytes20 pool;
        assembly {
            pool := mload(add(data, 0x9))
        }
    }

    function _logData() internal returns (bytes memory) {
        bytes memory dataToRead = msg.data;
        console.log("Msg.Data");
        console.logBytes(dataToRead);
        return msg.data;
    }
}

// 0xf21d9af40000000000000000000000005457069f4e87d43fcbd9106c8bde12bdf224b8850000000000000000000000000000000000000000000000000de0518bafb6ece7000000000000000000000000000000000000000000000000000000024ca9af140000000000000000000000005400000000000000000000000000000000009876

// 1. variable = 1 palabra = 32 bytes = 256 bits
// 2. 32 bytes = 64 caracteres hexadecimales
// 3. 1 byte = 2 digitos hexa
