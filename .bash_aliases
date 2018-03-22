# Vagrant boxes
alias js='cd ~/Development/vagrantVM/javascript && vagrant up'
alias py='cd ~/Development/vagrantVM/python && vagrant up'

# Python
alias py2='python'
alias py='python3'

# Ansible
alias ans='cd /etc/ansible'

# Virtualbox
alias vbs='VBoxManage startvm'  # Turn on VB machine
alias vbc='VBoxManage controlvm'  # Pause, reset or poweroff a VB machine
alias vbl='VBoxManage list vms'  # List VB machines

# SSH keys vagrant
# alias jsssh='ssh -i ~/.ssh/js_rsa vagrant@192.168.33.33'
# alias pyssh='ssh -i ~/.ssh/py_rsa vagrant@192.168.33.10'

# Web pages
# alias youtube='chrome youtube.com'
# alias gmail='chrome gmail.com'
# alias hotmail='chrome hotmail.com'
# alias router='chrome 192.168.15.1'
# alias github='chrome github.com/setcain'

# Linux comands
alias off='sudo init 0'  # Turn off machine
alias wifi='cd /etc/NetworkManager/system-connections'  # See wifi passwords
alias hosts='sudo vim /etc/hosts'  # Open hosts file
alias keys='cd ~/.ssh'  # Go to keys ssh
alias repos='vim /etc/apt/sources.list'  # Open repository file
alias open='run-mailcap'  # Open files
alias speedtest='cd /usr/bin && speedtest.py && cd -'  # Test internet speed
alias linux='lsb_release -a'  # See my linux info

# More
alias fsociety="curl http://0w.nz/fsociety.ascii"  # Show fsociety logo
