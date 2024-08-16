// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts@4.9/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9/access/Ownable.sol";

contract standard is ERC20, Ownable {
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) ERC20(_name, _symbol) {
        _mint(msg.sender, _initialSupply);
    }

    function mint(uint256 _value) public onlyOwner {
        _mint(msg.sender, _value); 
    }

    function burn(uint256 _value) public {
        _burn(msg.sender, _value);
    }

    function transfer(address _to, uint256 _value) public override returns (bool success) {
        _transfer(_msgSender(), _to, _value);
        return true;
    }
}
