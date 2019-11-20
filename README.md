# TruStory Testnets

## Overview

TruStory testnets will test the functionality of the TruStory blockchain prior to the launch of mainnet. Validators who plan on joining the mainnet launch are strongly encouraged to participate in testnets.

To join a testnet, you must submit a [genesis transaction](https://github.com/TruStory/testnets#create-genesis-transaction) that creates your validator on the TruStory blockchain.

## How to run a validator on a testnet

The latest testnet is [testnet-1](https://github.com/TruStory/testnets/tree/master/testnet-1).

### Install TruChain:

```sh
git clone https://github.com/trustory/truchain
cd truchain && git checkout v0.3.3
make install
```

### Create a wallet

```sh
# <moniker> is the name of your validator node
truchaind init --chain-id=testnet-1 <moniker>

# <name> is the name of your validator's account
truchaincli keys add <name>
```
Make sure you save the mnemonic in a safe place!

### Create genesis transaction

```sh
truchaind add-genesis-account $(truchaincli keys show <name> -a) 10000000000utru
truchaind gentx --name <name> --amount 10000000000utru --ip <node_ip_address>
```

This generates a JSON file that contains the chain transaction that creates your validator. 
For example, check out the genesis transaction for [blockshane](https://github.com/TruStory/testnets/blob/master/testnet-1/gentx/gentx-267f9165a57da281721c3cf58adfeb9d506b7777.json). 

_The JSON in this example has been formatted to be human readable. It doesn't have to be formatted, but feel free to use a tool like [jq](https://stedolan.github.io/jq/) if you'd like to format yours as well._

### Submit genesis transaction

[Fork this repo](https://help.github.com/en/github/getting-started-with-github/fork-a-repo), and [submit a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork) with your gentx file added to: `testnet-1/gentx`.

## Next Steps

Await further instructions on joining the testnet when it launches.
