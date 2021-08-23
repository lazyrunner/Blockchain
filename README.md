# BlockChain

## Truffle 
framework to create smart contracts and test it

## Ganache
local blockchain    

## Metamask
Extention Connect to a blockchain

## Smart contract
written in solidity


## Deploy contract
``` 
truffle migrate --reset 
```
Enter console
``` 
truffle console 
```
Get instance of app
``` 
Election.deployed().then(function(instance) { app=instance;} ) 
```

Get candidates
``` 
app.candidates(1) 
app.candidates(2)
app.candidatesCount() 
```

Get candidate
```
app.candidates(1).then(function(c) {candidate = c;})
candidate
candidate[0].toNumber()
```


## Start server
start the application server
```
npm run dev
```

## Metamask 
1. change Network to localhost and set the port to where ganesh is running
1. In Account check connected sites -> manually add connected site and then allow


https://youtu.be/3681ZYbDSSk?t=4439