// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseContract.sol";

contract DataStorage is BaseContract {
    mapping(address => uint256) public data;

    function setData(address _user, uint256 _value) public onlyOwner {
        data[_user] = _value;
    }

    function getData(address _user) public view returns (uint256) {
        return data[_user];
    }
}
