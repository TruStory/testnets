# Linux setup

## Minimum requirements

### Hardware
Num CPUs: 2

Memory: 4 GB

Disk: 40 GB SSD

(i.e: AWS t2.medium instance)

### Network

TruChain requires a public static IP address (i.e: [AWS Elastic IP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)).

## Installation (Ubuntu)

### Prerequistes

Increase resource limits for [Tendermint](https://tendermint.com):
```
$ ulimit -n 4096
```

### Make a system service (optional)

Creating a system service makes it easy to start and stop truchaind, and view logs.

```
$ sudo nano /etc/systemd/system/truchaind.service
```

Paste the following:

```
[Unit]
Description=TruStory Node
After=network-online.target

[Service]
User=ubuntu
WorkingDirectory=/home/ubuntu/bin
ExecStart=/home/ubuntu/bin/truchaind --log_level "main:info,state:info,*:error,app:info,account:info,trubank:info,claim:info,community:info,truslashing:info,trustaking:info" start --p2p.persistent_peers "c86fe442b5febdd2539d322af83d9c55f57d57fd@13.52.13.214:26656"
Restart=always
RestartSec=3
LimitNOFILE=4096

[Install]
WantedBy=multi-user.target
```

Enable the service:
```
$ sudo systemctl enable truchaind
```

Start node:
```
$ sudo systemctl start truchaind
```

Stop node:
```
$ sudo systemctl stop truchaind
```

Check logs:
```
$ journalctl -u truchaind -f
```
