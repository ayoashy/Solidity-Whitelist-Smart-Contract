// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract whiteList {
    uint8 public maxWhiteListedAddresses;

    mapping(address => bool) public whiteListedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhiteListedAddresses) {
        maxWhiteListedAddresses = _maxWhiteListedAddresses;
    }

    function addAddressToWhiteList() public {
        require(
            !whiteListedAddresses[msg.sender],
            "Address already whitelisted!"
        );
        require(
            numAddressesWhitelisted < maxWhiteListedAddresses,
            "maximun number reached!"
        );

        whiteListedAddresses[msg.sender] = true;

        numAddressesWhitelisted++;
    }
}
