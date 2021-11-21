var ActionStrategy = artifacts.require("../contracts/ActionStrategy.sol");
var Attaquant = artifacts.require("../contracts/Attaquant.sol");

contract('Attaquant', function() {
  it("Attaque !", function() {
    return Attaquant.deployed().then(function(instance) {
      act = instance.chooseNextAction(Action.PHYSICAL_ATTACK, "", 0, "", 0);
      assert.equal(attaque, Action.PHYSICAL_ATTACK, "Il fallait attaquer, là !");
    });
  }); 
});