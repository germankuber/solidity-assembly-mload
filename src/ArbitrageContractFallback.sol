// SPDX-License-Identifier: UNLICENSED
import "forge-std/console.sol";

pragma solidity ^0.8.13;

contract ArbitrageContractFallback {
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

    function _arbitrage_1(bytes memory data) internal {
        bytes memory data = _logData();
        bytes32 pool;
        assembly {
            pool := mload(data)
        }
        console.logBytes32(pool);
    }

    function _arbitrage_2(bytes memory data) internal {
        bytes memory data = _logData();
        bytes32 pool;
        assembly {
            pool := mload(data)
        }
        console.logBytes32(pool);
    }

    function arbitrage_3() external {
        bytes memory data = _logData();
        bytes32 pool;
        assembly {
            pool := mload(data)
        }
        console.logBytes32(pool);
    }

    // 0xaabb000000000000000000000000000000000000000000000000000000000000000000000000
    function arbitrage_4() external {
        bytes memory data = _logData();
        bytes32 dataToRead;
        assembly {
            // dataToRead := mload(add(data, 0x4))
            // // dataToRead := mload(add(data, 0x4))

            dataToRead := mload(add(data, 0x24))
        }
        console.log("LOG 16");
        console.logBytes32(dataToRead);
    }

    function arbitrage_5() external {
        bytes memory data = _logData();
        bytes2 pool;
        assembly {
            pool := mload(add(data, 0x0))
            // // pool := mload(add(data, 0x4))

            pool := mload(add(data, 0x24))
        }
        console.logBytes2(pool);
    }

    function arbitrage_6() external {
        bytes memory data = _logData();
        bytes2 dataToReadNumber;
        bytes32 dataAllBytes;
        assembly {
            dataToReadNumber := mload(add(data, 0x24))
            dataAllBytes := mload(add(data, 0x24))
        }
        console.log("UINT 16");
        console.logBytes2(dataToReadNumber);
        console.logBytes32(dataAllBytes);
        console.log(uint16(dataToReadNumber));
    }

    // 0x0000000000000000000000000000000000000000000000000000000000000006 d578d2db aabb 000000000000

    function arbitrage_7() external {
        bytes memory data = _logData();
        bytes32 dataBytes;
        uint16 poolData;
        assembly {
            poolData := mload(add(data, 0x6))
            dataBytes := mload(add(data, 0x6))
        }
        console.log("UINT 16");
        console.log(poolData);
        console.logBytes32(dataBytes);
    }

    // 0x0000000000000000000000000000000000000000000000000000000000000006 d578d2db aabb 000000000000

    function arbitrage_8() external {
        bytes memory data = msg.data;
        bytes2 dataRead;
        assembly {
            dataRead := mload(add(data, 0x24))
        }
        console.log(uint16(dataRead));
    }

    function arbitrage_9() external {
        bytes memory data = msg.data;
        uint16 dataRead;
        assembly {
            dataRead := mload(add(data, 0x6))
        }
        console.log(dataRead);
    }

    function transferFrom_14() external {
        bytes memory data = _logData();
        address addressFrom;
        bytes32 bytesRead;
        assembly {
            addressFrom := mload(add(data, 0x18))
            bytesRead := mload(add(data, 0x18))
        }
        console.log("From : ", addressFrom);
        console.logBytes32(bytesRead);
    }

    function transferFrom_15() external {
        bytes memory data = _logData();
        address addressFrom;
        address addressTo;
        bytes32 bytesAddressFromtRead;
        bytes32 bytesAddressToRead;
        assembly {
            addressFrom := mload(add(data, 0x18))
            bytesAddressFromtRead := mload(add(data, 0x18))
            addressTo := mload(add(data, 0x2c))
            bytesAddressToRead := mload(add(data, 0x2c))
        }
        console.log("From : ", addressFrom);
        console.logBytes32(bytesAddressFromtRead);
        console.log("---------------");
        console.log("To : ", addressTo);
        console.logBytes32(bytesAddressToRead);
        console.log("---------------");
    }

    function transferFrom_16() external {
        bytes memory data = _logData();
        address addressFrom;
        bytes32 bytesAddressFromtRead;
        address addressTo;
        bytes32 bytesAddressToRead;

        uint256 amount;
        bytes32 bytesAmountToRead;
        assembly {
            addressFrom := mload(add(data, 0x18))
            bytesAddressFromtRead := mload(add(data, 0x18))
            addressTo := mload(add(data, 0x2c))
            bytesAddressToRead := mload(add(data, 0x2c))
            amount := mload(add(data, 0x4c))
            bytesAmountToRead := mload(add(data, 0x4c))
        }
        console.log("From : ", addressFrom);
        console.logBytes32(bytesAddressFromtRead);
        console.log("---------------");
        console.log("To : ", addressTo);
        console.logBytes32(bytesAddressToRead);
        console.log("---------------");
        console.log("Amount : ", amount);
        console.logBytes32(bytesAmountToRead);
        console.log("---------------");
    }

    function transferFrom_17() external {
        bytes memory data = _logData();
        address addressFrom;
        bytes32 bytesAddressFromtRead;
        address addressTo;
        bytes32 bytesAddressToRead;

        uint128 amount;
        bytes32 bytesAmountToRead;
        assembly {
            addressFrom := mload(add(data, 0x18))
            bytesAddressFromtRead := mload(add(data, 0x18))
            addressTo := mload(add(data, 0x2c))
            bytesAddressToRead := mload(add(data, 0x2c))
            amount := mload(add(data, 0x3c))
            bytesAmountToRead := mload(add(data, 0x3c))
        }
        console.log("From : ", addressFrom);
        console.logBytes32(bytesAddressFromtRead);
        console.log("---------------");
        console.log("To : ", addressTo);
        console.logBytes32(bytesAddressToRead);
        console.log("---------------");
        console.log("Amount : ", amount);
        console.logBytes32(bytesAmountToRead);
        console.log("---------------");
    }

    function transferFrom_18() external {
        bytes memory data = msg.data;
        assembly {
            let addressFrom := mload(add(data, 0x18))
            let addressTo := mload(add(data, 0x2c))
            let amount := mload(add(data, 0x3c))
        }
    }

    function transferFrom_19(
        address _from,
        address _to,
        uint128 _amount
    ) external {}

    // 0xfe26a771fabaaaaaaadaaaaaaaeaaaaaabaaaaabaaababaf7111111111122222222233333333211111111117000000000000152d02c7e14af67fffff
    function transferFrom_20() external {
        address addressFrom;
        bytes20 addressFromBytes;
        bytes20 addressTo;
        bytes16 amount;
        assembly {
            // read the next 20 bytes (address1)
            addressFrom := calldataload(0)
            addressFromBytes := calldataload(4)
            // read the next 20 bytes (address2)
            addressTo := calldataload(24)
            // read the next 16 bytes (uintValue)
            amount := calldataload(44)
        }
    }

    function transferFrom_21() external {
        bytes20 param1Bytes;
        bytes20 param2Bytes;
        bytes16 param3Bytes;

        assembly {
            param1Bytes := calldataload(4)
            param2Bytes := calldataload(24)
            param3Bytes := calldataload(44)
        }

        address param1 = address(bytes20(param1Bytes));
        address param2 = address(bytes20(param2Bytes));

        uint128 param3 = uint128(param3Bytes);
    }

    // quiero una funcion en solidity (assembly), la cual se encargue de hacer lo siguiente:
    // 1. leer del calldata los parametros que le envio los cuales tendran el siguiente formato: <address><address><uint128>, Dicho calldata, tendra en cada tipo de datos la cantidad de bytes necesarias (no contendra hexadecimales de mas)
    // 2. quiero que estos valores los leas a  tipos de variable bytes(con la longitud correspondiente) luego los parsees al tipo correspondiente
    // 3. tene en consideracion que el selector de la funcion al principio del calldata

    function _logData() internal returns (bytes memory) {
        bytes memory dataToRead = msg.data;
        console.log("Msg.Data");
        console.logBytes(dataToRead);
        console.log("---------------");

        return msg.data;
    }

    // fallback() external payable {
    //     _arbitrage_1(msg.data);
    //     // _arbitrage_2(msg.data);
    // }
}

// 0xf21d9af40000000000000000000000005457069f4e87d43fcbd9106c8bde12bdf224b8850000000000000000000000000000000000000000000000000de0518bafb6ece7000000000000000000000000000000000000000000000000000000024ca9af140000000000000000000000005400000000000000000000000000000000009876

// 1. variable = 1 palabra = 32 bytes = 256 bits
// 2. 32 bytes = 64 caracteres hexadecimales
// 3. 1 byte = 2 digitos hexa
