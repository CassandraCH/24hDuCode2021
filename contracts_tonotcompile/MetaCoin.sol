contract MetaCoin {
    mapping (address => uint) balances;

    event Transfer(address _from, address _to, uint256 _value);

    function MetaCoin() public {
        balances[tx.origin] = 10000;
    }

    function getBalance(address addr) public view returns(uint) {
        return balances[addr];
    }

    function getBalanceInEth(address addr) public view returns(uint) {
        return getBalance(addr);
    }   

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function deposit(uint amount) public payable {
        balances[msg.sender] += amount;
    }

    function deposit(address addr) public payable {
        balances[addr] += msg.value;
    }               
}