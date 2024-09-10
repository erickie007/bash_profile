# GOLANG Path

GOPATH=$HOME/go
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin

# Add to path

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# wpscan token
export WPSCAN_API_TOKEN=""

# Automated Script for Recon

recon() {
    bash ~/tools/red-team-recon/red-team-recon.sh $1
}

ipinfo() {
    curl https://ipinfo.io
}

ipcity() {
    curl https://ipinfo.io/city
}

spoof() {
    bash ~/tools/sendemail/sendemail.sh
}

upgrade(){
    sudo apt update && sudo apt upgrade -y
}

update(){
    sudo apt update -y
}

clean(){
    sudo apt autoclean && sudo apt autoremove -y
}

burp(){
    "/usr/lib/jvm/java-21-openjdk-amd64/bin/java" "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:/home/erickie007/tools/BurpSuite/burploader.jar" "-noverify" "-jar" "/home/erickie007/tools/BurpSuite/burpsuite_pro_v2024.5.jar"  
}

ipa(){
    ifconfig | grep -oP 'inet \K[\d.]+'
}

sniff(){
    sudo bettercap -caplet ~/scripts/sniff.cap
}

pipenv(){
    python3 -m venv myenv
    source myenv/bin/activate
}

qvc(){
    # Quick Vulnerability Check
    echo $1 | waybackurls | grep "\?" | uro | httpx -silent | nuclei -es info
}
