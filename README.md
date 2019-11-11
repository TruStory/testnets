# TruStory Testnets

## Overview

TruStory testnets will test the functionality of the TruStory blockchain prior to the launch of mainnet. Validators who plan on joining the mainnet launch are strongly encouraged to participate in testnets.

To join a testnet, you must submit a genesis transaction that contains the transaction that creates your validator on the TruStory blockchain.

## How to run a validator on a testnet

The latest testnet is testnet-1.

### Download TruChain Linux binaries into your home ~/bin directory:

```
# TODO: update with real ones
wget https://github.com/trustory/testnets/betanet-2/build/truchaincli -O ~/bin
wget https://github.com/trustory/testnets/betanet-2/build/truchaind -O ~/bin
```

### Install dependencies

```
ulimit -n 4096

# this will be useful for parsing genesis files
sudo snap install jq
```

### Create a wallet

```
truchaind init --chain-id=betanet-2 [moniker]
truchaincli keys add [name]
```
Make sure you save the mnemonic in a safe place!

### Create genesis transaction

```
truchaind add-genesis-account $(truchaincli keys show [name] -a) 1000000000000tru

truchaind gentx --name [name] --amount 100000000000tru --ip [node_ip]
```

### Submit genesis transaction

Fork this repo, and submit a PR with your gentx file saved to: `betanet-2/gentxs`.

## Next Steps

Await further instructions on joining the testnet when it launches.
