const Transfert = artifacts.require("Transfert");

module.exports = function (deployer) {
  deployer.deploy(Transfert);
};
