### Study notes

No gas needed for reading from blockchain - function call is only executed by connected node, read is free. 
ABI - application _Binary_ interface

Compile ABI from contracts (Greeter.sol) to src/artifacts -> import from src/artifacts/(Greeter.json)

`npx hardhat node`: run local test node. Creates 20 test accounts and adddresses for testing. each account has default 10K ETH. 

`npx hardhat compile`

`npx hardhat run scripts/deploy.js --network localhost`: deploy contract to test network


Contract deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Need to connect from client app 

Using Account #0: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266

#### Debug and Deploy contracts

Edit contract(.sol) -> Compile -> Deploy -> Update contract addresses in client app (.js)


metamask injects global API into websites at [window.etherum](https://docs.metamask.io/guide/ethereum-provider.html#ethereum-provider-api) - request user Ethereum accounts, read data from connected blxchains and isgn messages. 
Use [@metamask/detect-provider](https://npmjs.com/package/@metamask/detect-provider) to detect provider on platform/browser

ethers.providers - different ways to connect to Ethereum blockcchain e.g. ehterscan, jsonrpc, infura, web3 [link](https://docs.ethers.io/ethers.js/v3.0/html/api-providers.html)

infura endpoint: https://ropsten.infura.io/v3/ab5dcd7183a8415cb1c3156a87b8c7bf


Apparently this error: 

```
Unhandled Rejection (Error): call revert exception (method="balanceOf(address)", errorSignature=null, errorArgs=[null], reason=null, code=CALL_EXCEPTION, version=abi/5.1.2)
```

is because you're connected to the wrong network

Sending to Account#1: 
0x70997970c51812dc3a010c7d01b50e0d17dc79c8



Getting error: 

```
Nonce too high. Expected nonce to be 0 but got 3. Note that transactions can't be queued when automining.
```

Have to manually reset nonce [guide](https://btcgeek.com/how-to-set-nonce-in-metamask/). Gonna skip this and use new adds

Send from Account#1 0x70997970c51812dc3a010c7d01b50e0d17dc79c8

To Account#2
0x3c44cdddb6a900fa2b585dd299e03d12fa4293bc


Not sure what happens, but need to redeploy contracts even tho no changes to compile


---
First set of tokens is mined by deployer address: `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266`

Only this address can issue the initial batch of tokens

I can change the totalSupply but token contract also changes. 

---

ERC20 is a class from [Open Zeppeline](https://solidity-by-example.org/app/erc20/) with basic inheritable functions for balance, transfer, approve and allow