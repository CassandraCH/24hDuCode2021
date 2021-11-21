const MyWorld = artifacts.require("MyWorld");
const MarcoPolo = artifacts.require("MarcoPolo");

module.exports = function (deployer) {
  deployer.deploy(MyWorld);
  deployer.deploy(MarcoPolo);
};
