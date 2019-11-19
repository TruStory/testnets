# TruStory Testnets

## Overview

TruStory testnets will test the functionality of the TruStory blockchain prior to the launch of mainnet. Validators who plan on joining the mainnet launch are strongly encouraged to participate in testnets.

To join a testnet, you must submit a [genesis transaction](https://github.com/TruStory/testnets#create-genesis-transaction) that creates your validator on the TruStory blockchain.

## How to run a validator on a testnet

The latest testnet is testnet-1.

### Install TruChain:

```
git clone https://github.com/trustory/truchain
git checkout v0.3.3
make install
```

### Setup

Increase the resources limits for the user. Needed for Tendermint.
```
ulimit -n 4096
```

### Create a wallet

```
truchaind init --chain-id=testnet-1 [moniker]
truchaincli keys add [name]
```
Make sure you save the mnemonic in a safe place!

### Create genesis transaction

```
truchaind add-genesis-account $(truchaincli keys show [name] -a) 10000000000utru
truchaind gentx --name [name] --amount 10000000000utru --ip [node_ip]
```

### Submit genesis transaction

Fork this repo, and submit a PR with your gentx file saved to: `testnet-1/gentx`.

## Next Steps

Await further instructions on joining the testnet when it launches.
