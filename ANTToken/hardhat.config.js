require("@nomiclabs/hardhat-waffle");
require('dotenv').config()

task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});


module.exports = {
  solidity: "0.8.4",
  networks:{
    mumbai:{
      url: 'https://polygon-mumbai.g.alchemy.com/v2/GeqhX_1cHgF6QGDJdKJMIGCfCpQnnPfb',
      accounts: [`0x${process.env.PRIVATE_KEY}`]
    }
  }
};