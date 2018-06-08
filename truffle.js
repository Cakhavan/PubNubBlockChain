
  var HDWalletProvider = require("truffle-hdwallet-provider");

var mnemonic = "seminar owner mushroom torch diamond dragon hire box code regret bitter divorce";



module.exports = {

  networks: {
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/v425L7501kT4oFF4kUr0")
      },
      network_id: 1,
      gas: 980000
    }   
  }
};

