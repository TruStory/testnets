# ⚠️ Testnet-1 Update

**Genesis transaction submission: Nov 22nd 5pm PST (0100 GMT)**

**Genesis file availability:      Nov 25th 10am PST (1800 GMT)**

**Genesis start time:             Nov 26th 9am PST (1700 GMT)**


Please update your binaries to the latest release [v0.4.2-beta](https://github.com/TruStory/truchain/releases/tag/v0.4.2-beta):
```
$ wget https://github.com/TruStory/truchain/releases/download/v0.4.2-beta/truchain-v0.4.2-beta.tar.gz
$ mkdir -p ~/bin && tar xzvf truchain-v0.4.2-beta.tar.gz -C ~/bin
```

After the genesis availability date, download the genesis file to your chain config directory:
```
$ wget -O .truchaind/config/genesis.json https://raw.githubusercontent.com/TruStory/testnets/master/testnet-1/genesis.json
```

Verify the checksum:
```
$ sha256sum .truchaind/config/genesis.json
d619a3183c27b214944ff39e23a93b9ed4c83c0df51b3513cbb35ed1f0c1bbc8 genesis.json
```

Before the genesis start time, start your chain:
```
$ truchaind start --p2p.persistent_peers "c86fe442b5febdd2539d322af83d9c55f57d57fd@13.52.13.214:26656"
```
Better yet, start it [as a service](https://github.com/TruStory/testnets/blob/master/linux.md#make-a-system-service-optional).

If all goes well, all validators will start producing blocks at the genesis start time.

Persistent peers:
```
c86fe442b5febdd2539d322af83d9c55f57d57fd@13.52.13.214:26656
42e35dc33e90acecc00f2a29fe397cb3c26e2db7@52.52.237.128:26656
bea30dff4c4cf863794a249c31a1a9f6fb6487e3@54.183.182.160:26656
```

Seed nodes:
```
c96518bac16bef98757d5eef8ba8fa45b0c75272@52.52.75.14:26656
```
