var MetaCoin = artifacts.require("./MetaCoin.sol");

contract('MetaCoin', function(accounts) {
  it("should put 10000 MetaCoin in the first account", function() {
    return MetaCoin.deployed().then(function(instance) {
      return instance.getBalance.call(accounts[0]);
    }).then(function(balance) {
      assert.equal(balance.valueOf(), 10000, "10000 wasn't in the first account");
    });
  });
  it("should return 20000 Eth in the first account", function() {
    return MetaCoin.deployed().then(function(instance) {
      return instance.getBalanceInEth.call(accounts[0]);
    }).then(function(balance) {
      assert.equal(balance.valueOf(), 20000, "10000 wasn't in the first account");
    });
  });  
});