// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

contract MICToken is ERC20, Ownable {
    using Math for uint256;

    uint256 constant _totalSupply = 200000000000;

    uint256 constant _tokenToOffer = 40000000000;
    uint256 constant _tokenReserve1 = 40000000000;
    uint256 constant _tokenReserve2 = 40000000000;
    uint256 constant _tokenReserve3 = 40000000000;
    uint256 constant _tokenReserve4 = 40000000000;

    string constant _tokenName = "Mongolian Investment Coin";
    string constant _tokenSymbol = "MIC";

    address constant _tokenOfferAddress =
        0x3F35473075Bc28e632a881a19E271C12c7f48c8E;
    address constant _tokenReserveAddress1 =
        0xB6Bad08ad4ae5F4b9a6A5f4076C37655D281f37f;
    address constant _tokenReserveAddress2 =
        0x3340Da47BFf41B85C925Ea840E81a45a84A6a1a1;
    address constant _tokenReserveAddress3 =
        0xb43689fD00b0EC09cc9971741F642519329FE9c4;
    address constant _tokenReserveAddress4 =
        0x36f980FF1719A51EE03c7EDEBfaF74c25E37d65C;

    constructor() ERC20(_tokenName, _tokenSymbol) {
        _mint(_tokenOfferAddress, _tokenToOffer * 10**18);
        _mint(_tokenReserveAddress1, _tokenReserve1 * 10**18);
        _mint(_tokenReserveAddress2, _tokenReserve2 * 10**18);
        _mint(_tokenReserveAddress3, _tokenReserve3 * 10**18);
        _mint(_tokenReserveAddress4, _tokenReserve4 * 10**18);
    }

    fallback() external payable {
        revert();
    }

    receive() external payable {
        revert();
    }

    function burn() public pure {
        revert();
    }

    function operatorBurn() public pure {
        revert();
    }
}
