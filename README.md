# ERC20-TOKEN-Solidity
Basic program to generate your own ERC20 token and test it on a dummy Ethereum network

# Getting Started
Install MetaMask extension for your browser.

Create an account on Metamask.(Please ensure that you store your seed words somewhere safe)

Choose Kovan Test Network in your dashboard and copy the account/wallet address.

Visit https://gitter.im/kovan-testnet/faucet and login with a github account.

Join kovan-testnet/faucet chatroom and paste your Wallet address.

They will provide you with test ethers in your account (Note these ethers are non transferable to ethereum main net).

# Creating and Deploying your own Token

Go to http://remix.ethereum.org/ (you can also use any other Solidity IDE but ensure that it allow you to deploy tokens on Kovan net)

Write your own code or copy testToken.sol file in the ide and compile it(remix IDE do it automatically).

In the run tab ensure that Injected Web3 is selected as the environment and account shown is the wallet address of your metamask account.

Select "testToken" from the drop down menu and deploy(Note- Do not select ERC20 while deploying)

In few minutes you will be able to see your new token in metamask account.

# Transaction on the created Token

Transaction on the generated token can be done using MetaMask similar to any other ERC20 based token .

Cheers :) , you have successfully created and deployed your first ERC20 token

# Notes for further understanding
 1. Use safemath to avoid the memory leak problems in transaction done on testToken 
 2. You can follow various twitter and telegram groups for further understanding of the subject
 3. Look into Truffle and ganache framework 
 4. You can also try other ethereum contract languages like Viper instead of Solidity
 
 
