#!/bin/bash

NETWORK=testnet-1
CONFIG=~/.truchaind/config

rm -rf $CONFIG/gentx && mkdir $CONFIG/gentx

for i in $NETWORK/gentx/*.json; do
  echo $i
  truchaind add-genesis-account $(jq -r '.value.msg[0].value.delegator_address' $i) $(jq -r '.value.msg[0].value.value.amount' $i)$(jq -r '.value.msg[0].value.value.denom' $i)
  cp $i $CONFIG/gentx/
done
truchaind collect-gentxs

cp $CONFIG/genesis.json $NETWORK
