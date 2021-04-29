### Study notes

No gas needed for reading from blockchain - function call is only executed by connected node, read is free. 
ABI - application _Binary_ interface

Compile ABI from contracts (Greeter.sol) to src/artifacts -> import from src/artifacts/(Greeter.json)

`npx hardhat node`: run local test node. Creates 20 test accounts and adddresses for testing. each account has default 10K ETH. 

`npx hardhat run scripts/deploy.js --network localhost`: deploy contract to test network


Contract deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Need to connect from client app 

Using Account #0: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266

metamask injects global API into websites at [window.etherum](https://docs.metamask.io/guide/ethereum-provider.html#ethereum-provider-api) - request user Ethereum accounts, read data from connected blxchains and isgn messages. 
Use [@metamask/detect-provider](https://npmjs.com/package/@metamask/detect-provider) to detect provider on platform/browser

ethers.providers - different ways to connect to Ethereum blockcchain e.g. ehterscan, jsonrpc, infura, web3 [link](https://docs.ethers.io/ethers.js/v3.0/html/api-providers.html)

infura endpoint: https://ropsten.infura.io/v3/ab5dcd7183a8415cb1c3156a87b8c7bf