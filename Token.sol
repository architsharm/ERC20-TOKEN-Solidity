pragma solidity ^0.4.23;



contract ERC20 {
function totalSupply() constant returns (uint _totalSupply);
function balanceOf(address _owner) constant returns (uint balance);
function transfer(address _to, uint _value) returns (bool success);
function transferFrom(address _from, address _to, uint _value) returns (bool success);
function approve(address _spender, uint _value) returns (bool success);
function allowance(address _owner, address _spender) constant returns (uint remaining);
event Transfer(address indexed _from, address indexed _to, uint _value);
event Approval(address indexed _owner, address indexed _spender, uint _value);
}


contract testToken is ERC20 {

// Declare Variables
// Unsafe code, do not consult to it.
mapping (address=>uint256) public balances ;

uint256 public totalSupply;

string public symbol = 'LRN';

string public name = 'Learning Token';

uint8 public decimals = 18;

uint256 multiplier = 1000000000000000000;


//define methods

function testToken() {
    balances[msg.sender] = 1000*multiplier;
}

function totalSupply() public constant returns(uint256) {
    return totalSupply;
}

function balanceOf(address _owner) constant returns (uint256) {
    return balances[_owner];
}


function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balances[msg.sender]> _value);
    balances[msg.sender] = balances[msg.sender] - _value;
    //Unsafe maths- use safe math
    balances[_to] = balances[_to] + _value;
    emit Transfer(_to,msg.sender,_value);
}

function approve(address _spender, uint _value) returns (bool success){
    return true;
}
function allowance(address _owner, address _spender) constant returns (uint remaining){
    return 0;

}

function transferFrom(address _from, address _to, uint _value) returns (bool success){
    return true;
}

// define events
event Transfer(address _to, address _from, uint256 _value);
}
