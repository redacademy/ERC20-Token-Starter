pragma solidity ^0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract SuperToken is StandardToken, Ownable {
    string public name = "SuperToken";
    string public symbol = "ST";
    uint8  public decimals = 2;
    uint   public INITIAL_SUPPLY = 420000;

    constructor() public {
        owner = msg.sender;
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}

