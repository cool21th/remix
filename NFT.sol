pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol';

contract NFT is ERC721 {
    
    address admin;
    
    constructor () ERC721('LAB','LAB'){
        
        admin = msg.sender;
        // _mint(msg.sender, 1000000 * 10 ** uint256(decimals()));
        
    }
    
    function faucet(uint tokenNum) public {
        require(msg.sender == admin, "You are not the owner!!");
        _mint(msg.sender, tokenNum);
    }
    
}
