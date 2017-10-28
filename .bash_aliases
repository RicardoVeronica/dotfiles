# Vagrant boxes
alias py='cd ~/Development/Vagrant/pythonanaconda && vagrant up && vagrant ssh'
alias ph='cd ~/Development/Vagrant/php7dev && vagrant up && vagrant ssh'
alias js='cd ~/Development/Vagrant/javascript && vagrant up &&  vagrant ssh'
alias wp='cd ~/Development/Vagrant/vagrantpress && vagrant up && vagrant ssh'
alias st='cd ~/Development/Vagrant/ServerTest && vagrant up && vagrant ssh'

# SSH keys vagrant
alias pyssh='ssh -i ~/.ssh/py_rsa vagrant@192.168.33.10'
alias jsssh='ssh -i ~/.ssh/js_rsa vagrant@192.168.33.3'
alias phpssh='ssh -i ~/.ssh/ph_rsa vagrant@192.168.33.7'
alias wpssh='ssh -i ~/.ssh/wp_rsa vagrant@192.168.33.17'
alias stssh='ssh -i ~/.ssh/test_rsa vagrant@192.168.33.20'

# Web pages
alias youtube='chromium youtube.com'
alias gmail='chromium gmail.com'
alias hotmail='chromium hotmail.com'
alias router='chromium 192.168.15.1'
alias github='chromium github.com/setcain'

# Linux comands
alias off='sudo init 0'  # Turn off machine
alias wifi='cd /etc/NetworkManager/system-connections'  # See wifi passwords
alias hosts='sudo vim /etc/hosts'  # Open hosts file
alias keys='cd ~/.ssh'  # Go to keys ssh
alias repos='vim /etc/apt/sources.dist'  # Open repository file

# More things
alias fsociety="curl http://0w.nz/fsociety.ascii"  # Show fsociety logo
