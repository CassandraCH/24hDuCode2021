const Virement = artifacts.require("Virement");

module.exports = function (deployer) {
  deployer.deploy(Virement);
};
