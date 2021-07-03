pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract WETH is ERC20 {
    
    mapping(address => uint256) balances;
    
    constructor () ERC20('WETH','WETH'){
        _mint(address(this), 1000000 * 10 ** uint256(decimals()));
        approve(address(this), 1000000 * 10 ** uint256(decimals()));
        
    }
    function swap() public payable{
        this.transferFrom(address(this), msg.sender, msg.value);
        balances[msg.sender] += msg.value;
    }
    
    function payback(uint amount) public{
        transfer(msg.sender, amount);
        balances[msg.sender] -= amount;
    }
    
}
