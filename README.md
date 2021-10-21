This is a test repository with a bare bones ERC-20 contract created from scratch.

Pre-requisites:
- Truffle ()
- Git CLI ()
- NPM ()

From scratch:

First, create a new directory:

`mkdir coinTest`
`cd coinTest`

Once inside the repo:

`truffle init` - initialize empy truffle package
`git init` - (optional) initialize a github repo
`npm init` - package manager

Then, add needed dependencies:

1. OpenZeppelin contract standard.
    `npm i --save-dev @openzeppelin/contracts`
2. The network information for deploying to OP Kovan (add to truffle config)
    `npm i @truffle/hdwallet-provider`
    "optimistic_kovan: {
      network_id: 69,
      chain_id: 69,
      provider: function () {
        return new HDWalletProvider(
          process.env.MNEMONIC,
          "https://optimism-kovan.infura.io/v3/" + process.env.API_KEY,
          0,
          1
        );
      },
    }"
    - Setup env and gitignore
3. Wallet/User config for deploying to OP Kovan
    `npm i --save-dev @truffle/hdwallet-provider`
