//who is been attacked

pragma solidity ^0.8.6;

contract bank {
    mapping(address => uint) public balances; //maps address to a value and stores it in a public variable called balances


function bank payable {
    put();
}

function put() payable { //the put() function is where the storage of ether value happens in the contract
    balances[msg.sender] = msg.value; //msg.sender is the transaction sender's address
}

function get() { //function where the exploitable is that let addresses to withdraw the value of ether they have in bank as balance
    if (!msg.sender.call.value(balances[msg.sender])()) {
        throw;
    }
        balances[msg.sender] = 0; //bank sets the value of the address balance to zero only after checking if sent the transaction(sending ether to msg.sender)
        }
}