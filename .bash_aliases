# Vim
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias nvim='~/Downloads/AppImage/nvim.appimage'

# Obsidian
alias obsidian='~/Downloads/AppImage/Obsidian-0.12.5.AppImage --no-sandbox'

# Python
# alias pipenvs='cd ~/.local/share/virtualenvs/'
# alias pip='pip3'
# alias python='python3'

# Django projects
# alias manage='python manage.py'
# alias startproject='django-admin.py startproject'
# alias startapp='python manage.py startapp'
# alias check='python manage.py check'
# alias runserver='python manage.py runserver'
# alias migrations='python manage.py makemigrations && python manage.py migrate'

# Docker
#alias dockerh='docker -H tcp://192.168.80.80:2375'  # Connect to my docker vm
alias http="docker run -it --rm --net=host clue/httpie"
alias sqlite="docker run --rm -it nouchka/sqlite3"
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up'

# Linux comands
# alias off='sudo init 0'  # Turn off the machine
# alias open='xdg-open'  # Open files in manjaro
alias teclado='setxkbmap -layout' # espanish = es, english = us
alias wifi='cd /etc/NetworkManager/system-connections'  # See wifi passwords
alias hosts='sudo vim /etc/hosts'  # Open hosts file
alias keys='cd ~/.ssh'  # Go to keys ssh
alias repos='vim /etc/apt/sources.list'  # Open repository file
alias open='run-mailcap'  # Open files debian
alias mylinux='lsb_release -a'  # See my linux-repo info
alias fsociety="curl http://0w.nz/fsociety.ascii"  # Show fsociety logo
# alias speedtest='cd /usr/bin && speedtest.py && cd -'  # Test internet speed
alias publicip='curl icanhazip.com'  # See public ip
alias sshadd="eval &(ssh-agent -s)"
alias sshgithub="ssh-add ~/.ssh/github_rsa"
alias sshdivio="ssh-add ~/.ssh/divio_rsa"
alias set="sudo chown -R $USER:$USER"
alias gref="grep -rn"  # Find regex in file
alias lsof="sudo lsof -i tcp:3000"  # Determine which processes are runing
# sudo kill -9 [PID]

# Vagrant boxes
# alias vagrantjs='cd ~/Development/vagrantVM/javascript && vagrant up && vagrant ssh'
# alias vagrantpy='cd ~/Development/vagrantVM/python && vagrant up && vagrant ssh'
# alias vagrantsql='cd ~/Development/vagrantVM/sql && vagrant up && vagrant ssh'

# Virtualbox - vbs name --type headless, vbc name off
# alias vbs='VBoxManage startvm'  # Turn on VB machine
# alias vbc='VBoxManage controlvm'  # Pause, reset or poweroff a VB machine
# alias vbl='VBoxManage list vms'  # List VB machines

# Ansible
# alias ans='cd /etc/ansible'

# composer
# alias composer='php /usr/local/bin/composer/composer.phar'
