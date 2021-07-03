pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract Security is ERC20 {
    
    
    constructor () ERC20('LAB#1','LAB#1'){
        // _mint(msg.sender, 1000000 * 10 ** uint256(decimals()));
        
    }
    function deposit(uint tokenNum) public{
        
    }
}
