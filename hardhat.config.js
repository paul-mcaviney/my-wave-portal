require("@nomiclabs/hardhat-waffle");
require('dotenv').config()

module.exports = {
    solidity: "0.8.4",
    networks: {
        rinkeby: {
            // Get variables from variables.js
            url: process.env.ALCHEMY_URL,
            accounts: [process.env.PRIVATE_KEY],
        },
    },
};

