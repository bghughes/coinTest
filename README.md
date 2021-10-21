This is a test repository with a bare bones ERC-20 contract created from scratch and deployed to Optimistic Kovan.

Pre-requisites:
- Truffle (https://www.trufflesuite.com/docs/truffle/getting-started/installation)
- Git CLI (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git or just google for your OS)
- NPM (https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

Building this repo from scratch, steps:

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
          process.env.PRIVATE_KEY,
          "https://optimism-kovan.infura.io/v3/" + process.env.API_KEY
        );
      },
    }"
    - Setup env and gitignore
    - Add address and funded OP Kovan private key to env - security best practices
3. Wallet/User config for deploying to OP Kovan
    `npm i --save-dev @truffle/hdwallet-provider`

After the above is done, deploy to Optimism Kovan with:
`truffle migrate --network optimistic_kovan`

and then validate on etherscan (optionally):
npm i --save-dev sol-merger
add this to npm scripts:
`    "build-contracts": "sol-merger \"./contracts/*.sol\" ./build/mergedContracts"
`



