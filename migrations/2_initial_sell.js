const MarcoPolo = artifacts.require("MarcoPolo");
const MyWorld = artifacts.require("MyWorld");

module.exports = function (deployer) {
  deployer.deploy(MarcoPolo);
  deployer.deploy(MyWorld);
};
