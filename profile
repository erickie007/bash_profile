# GOLANG Path

GOPATH=$HOME/go
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin

# Add to path

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# Automated Script for Recon

recon() {
    bash ~/tools/red-team-recon/red-team-recon.sh $1
}

ipinfo() {
    curl https://ipinfo.io
}

scout() {
    python3 ~/tools/ScoutSuite/scout.py
}

ipcity() {
    curl https://ipinfo.io/city
}

s3ls() {
aws s3 ls s3://$1
}

dirsearch() { 
    python3 ~/tools/dirsearch/dirsearch.py -u $1 -t 50 -b 
}

spoof() {
    bash ~/tools/sendemail/sendemail.sh
}