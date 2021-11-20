const Attaquant = artifacts.require("Attaquant");
const Magicien = artifacts.require("Magicien");
const Legume = artifacts.require("Legume");


module.exports = function (deployer) {
  deployer.deploy(Attaquant);
  deployer.deploy(Magicien);
  deployer.deploy(Legume);
};
