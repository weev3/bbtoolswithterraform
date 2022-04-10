# bbtoolswithterraform
Install recon tools with terraform in digital ocean droplets

# Configuration
1. Edit your SSH public/private key in config folder. 
2. Change do_token variable in variable.tf. 
3. run ` terraform init; terraform apply ` in your terminal. 
4. Tools installation setup are in the config/install.sh file. You may install any additional tools. 

# Default Tools List
* nuclei
* naabu
* gobuster
* amass
* subfinder
* httpx
* uncover
* shuffledns
* dnsx
* waybackurls
* httprobe
* meg
* assetfinder
* kiterunner

# Default wordlists
* assetnote
* SecLists