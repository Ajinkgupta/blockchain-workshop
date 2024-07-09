const Vault = artifacts.require("Vault");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(Vault)
      .then(() => {
        // Optional: You can add additional logic here after deployment
        console.log("Vault deployed at:", Vault.address);
      });
};