sudo su
apt update -y && apt full-upgrade -y


#---------#
#  Tools  #
#---------#

cd /opt

# Ansible 
pip3 install ansible

# Terminator
apt install -y terminator

# Nautilus
apt install -y nautilus

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

