# Vagrant boxes
alias py='cd ~/Development/Vagrant/Python && vagrant up && pyssh'
alias ph='cd ~/Development/Vagrant/LAMP && vagrant up && phpssh'
alias js='cd ~/Development/Vagrant/MEAN && vagrant up &&  jsssh'
alias wp='cd ~/Development/Vagrant/VagrantPress && vagrant up & wpssh'
alias st='cd ~/Development/Vagrant/ServerTest && vagrant up && stssh'

# SSH keys vagrant
alias pyssh='ssh -i ~/.ssh/py_rsa vagrant@192.168.33.2'
alias jsssh='ssh -i ~/.ssh/js_rsa vagrant@192.168.33.3'
alias phpssh='ssh -i ~/.ssh/ph_rsa vagrant@192.168.33.7'
alias vpssh='ssh -i ~/.ssh/vagrantPress_rsa vagrant@192.168.33.17'
alias stssh='ssh -i ~/.ssh/test_rsa vagrant@192.168.33.20'

# Web pages
alias youtube='chromium youtube.com'
alias gmail='chromium gmail.com'
alias hotmail='chromium hotmail.com'
alias router='chromium 192.168.15.1'

# Linux comands
alias off='sudo init 0'  # Turn off machine
alias wifi='cd /etc/NetworkManager/system-connections'  # See wifi passwords
alias hosts='sudo vim /etc/hosts'  # Open file hosts
alias keys='cd ~/.ssh'  # Goto keys ssh info
