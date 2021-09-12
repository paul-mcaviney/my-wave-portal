require("@nomiclabs/hardhat-waffle");

module.exports = {
    solidity: "0.8.4",
    networks: {
        rinkeby: {
            // Get variables from variables.js
            url: variables.alchemyUrl,
            accounts: [variables.privateKey],
        },
    },
};

