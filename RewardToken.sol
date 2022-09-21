// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";


// Simple ERC721 Smart Contract made for Rewards.

contract RewardToken is ERC721, Ownable{

uint256 nextId = 1;

        constructor(string memory name, string memory symbol) ERC721(name, symbol){

    }

    function mint() public onlyOwner {
        _safeMint(msg.sender, nextId);
        nextId++;
    }
}
