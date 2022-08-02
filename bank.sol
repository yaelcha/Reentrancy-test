pragma solidity ^0.8.6;

contract bank {
    mapping(address => uint) public balances;


function bank payable {
    put();
}

function put() payable {
    balances[msg.sender] = msg.value;
}

function get() {
    if (!msg.sender.call.value(balances[msg.sender])()) {
        throw;
    }
        balances[msg.sender] = 0;
        }
}