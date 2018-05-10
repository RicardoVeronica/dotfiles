# Vagrant boxes
alias vagrantjs='cd ~/Development/vagrantVM/javascript && vagrant up && vagrant ssh'
alias vagrantpy='cd ~/Development/vagrantVM/python && vagrant up && vagrant ssh'
alias vagrantsql='cd ~/Development/vagrantVM/sql && vagrant up && vagrant ssh'

# Python
alias py2='python'
alias py='python3'

# Ansible
alias ans='cd /etc/ansible'

# Virtualbox
alias vbs='VBoxManage startvm'  # Turn on VB machine
alias vbc='VBoxManage controlvm'  # Pause, reset or poweroff a VB machine
alias vbl='VBoxManage list vms'  # List VB machines

# Docker
#alias dockerh='docker -H tcp://192.168.80.80:2375'  # Connect to my vm docker

# Linux comands
alias off='sudo init 0'  # Turn off the machine
alias wifi='cd /etc/NetworkManager/system-connections'  # See wifi passwords
alias hosts='sudo vim /etc/hosts'  # Open hosts file
alias keys='cd ~/.ssh'  # Go to keys ssh
alias repos='vim /etc/apt/sources.list'  # Open repository file
alias open='run-mailcap'  # Open files
alias linux='lsb_release -a'  # See my linux-repo info

# More
alias fsociety="curl http://0w.nz/fsociety.ascii"  # Show fsociety logo
alias speedtest='cd /usr/bin && speedtest.py && cd -'  # Test internet speed
