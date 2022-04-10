#!/bin/bash

curl -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.16.7.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
echo "export PATH=\$PATH:/root/go/bin" >> ~/.profile
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/root/go/bin" >> ~/.bashrc
source ~/.profile
source ~/.bashrc
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

wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz
tar -zxvf kiterunner_1.0.2_linux_amd64.tar.gz && rm -rf kiterunner_1.0.2_linux_amd64.tar.gz
mv kr /bin/


# From tomnomnom
go install github.com/tomnomnom/waybackurls@latest
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/assetfinder


# notification
go install -v github.com/projectdiscovery/notify/cmd/notify@latest

# install wordlist
mkdir /root/wordlist
cd /root/wordlist/ ; wget -r --no-parent -R "index.html*" https://wordlists-cdn.assetnote.io/data/ -nH
cd /root/wordlist/ ; wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip && unzip SecList.zip && rm -f SecList.zip




