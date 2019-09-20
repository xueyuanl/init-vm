#before ssh by root, you should set a root password manually1
passwd  # set a root passwd

pacman -Sy  # Synchronizing package databases

yes | pacman -S openssh
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
systemctl start sshd
systemctl enalbe sshd  # start sshd server on system boot
#systemctl disable sshd

yes | pacman -S net-tools dnsutils inetutils iproute2

### config .bash_profile
echo 'PS1="\[\033[0;31m\][\u@\h \W]\$\[\033[0m\] "' >> /root/.bash_profile
echo "alias ls='ls --color=auto'" >> /root/.bash_profile
echo "alias ll='ls -alFh'" >> /root/.bash_profile
echo "alias la='ls -A'" >> /root/.bash_profile
echo "alias l='ls -CF'" >> /root/.bash_profile
echo "alias ..='cd ..'" >> /root/.bash_profile

### config .bashrc file for screen commond tool
echo 'PS1="\[\033[0;31m\][\u@\h \W]\$\[\033[0m\] "' >> /root/.bashrc
echo "alias ls='ls --color=auto'" >> /root/.bashrc
echo "alias ll='ls -alFh'" >> /root/.bashrc
echo "alias la='ls -A'" >> /root/.bashrc
echo "alias l='ls -CF'" >> /root/.bashrc
echo "alias ..='cd ..'" >> /root/.bashrc


yes | pacman -S screen

yes | pacman -S git

yes | pacman -S gnu-netcat

### install docker
yes | pacman -S docker

# start docker deamon on reboot
systemctl start docker.service
