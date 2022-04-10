#!/bin/bash

curl -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.16.7.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
echo "export PATH=\$PATH:/root/go/bin" >> ~/.profile
source ~/.profile

# Project discovery's tools
# scanner 
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
sudo apt install -y libpcap-dev
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# discovery
go install github.com/OJ/gobuster/v3@latest
go install -v github.com/OWASP/Amass/v3/...@master
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest


# From tomnomnom
go install github.com/tomnomnom/waybackurls@latest
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/assetfinder


# notification
go install -v github.com/projectdiscovery/notify/cmd/notify@latest






