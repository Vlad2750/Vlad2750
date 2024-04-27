// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseContract.sol";
import "./DataStorage.sol";

contract DataManager is BaseContract {
    DataStorage public dataStorage;

    constructor(address _dataStorage) {
        dataStorage = DataStorage(_dataStorage);
    }

    function setData(address _user, uint256 _value) public onlyOwner {
        dataStorage.setData(_user, _value);
    }

    function getData(address _user) public view returns (uint256) {
        return dataStorage.getData(_user);
    }
}
