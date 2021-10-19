// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Haraj {
  address[16] public items;

  constructor() public {}

  function list() public view returns(address[16] memory) {
    return items;
  }

  function buy(uint itemId) public payable returns(uint) {
    require(itemId >= 0 && itemId <= 15);
    items[itemId] = msg.sender;
    return itemId;
  }
}
