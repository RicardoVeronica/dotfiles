# Vagrant boxes
alias py='cd ~/Development/VagrantVM/pythonanaconda && vagrant up \
            && vagrant ssh'
alias js='cd ~/Development/VagrantVM/javascript && vagrant up'

# SSH keys vagrant
alias pyssh='ssh -i ~/.ssh/py_rsa vagrant@192.168.33.10'
alias jsssh='ssh -i ~/.ssh/js_rsa vagrant@192.168.33.3'

# Web pages
alias youtube='chrome youtube.com'
alias gmail='chrome gmail.com'
alias hotmail='chrome hotmail.com'
alias router='chrome 192.168.15.1'
alias github='chrome github.com/setcain'

# Linux comands
alias off='sudo init 0'  # Turn off machine
alias wifi='cd /etc/NetworkManager/system-connections'  # See wifi passwords
alias hosts='sudo vim /etc/hosts'  # Open hosts file
alias keys='cd ~/.ssh'  # Go to keys ssh
alias repos='vim /etc/apt/sources.list'  # Open repository file
alias open='run-mailcap'  # Open files
alias speedtest='cd /usr/bin && speedtest.py && cd -'

# More things
alias fsociety="curl http://0w.nz/fsociety.ascii"  # Show fsociety logo
