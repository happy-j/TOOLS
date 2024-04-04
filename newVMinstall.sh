sudo su
apt update -y && apt full-upgrade -y


#---------#
#  Tools  #
#---------#

cd /opt

# Python Tools Check
apt install python3
apt install python3-pip
apt install pipx git
pipx ensurepath

# Ansible 
pip3 install ansible

# Terminator
apt install -y terminator

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt update -y
apt install -y sublime-text

# Updog
pip3 install updog

# Java
apt update -y
apt install -y default-jdk

# Sherlock
git clone https://github.com/sherlock-project/sherlock.git
python3 -m pip install -r /opt/sherlock/requirements.txt

# SecLists
apt install -y seclists

# WinPEAS and LinPEAS
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git

# Install ligolo-ng (port forward tool)
git clone https://github.com/nicocha30/ligolo-ng

# Autorecon
apt install curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf
python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git

# NetExec / nxc
pipx install git+https://github.com/Pennyw0rth/NetExec

