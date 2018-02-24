# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup_ssh.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+         #
#    GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+            #
#    Created: 2018/02/23 15:40:45 by Mingyun K         #+#    #+#              #
#    Updated: 2018/02/23 23:11:52 by Mingyun K        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# getting permission
su

# make a backup
cp /etc/network/interfaces /etc/network/interfaces-backup

# append
# first 3 part of IP address should be equal to the vboxnet0 addr
# last one should be different from that
# ex. same.same.same.diff
echo "auto eth1" >> /etc/network/interfaces
echo "iface eth1 inet static" >> /etc/network/interfaces
echo "address 192.168.56.10" >> /etc/network/interfaces
echo "netmask 255.255.255.0" >> /etc/network/interfaces

# change the port number
# private port number 49152 ~ 65535
# -i command creates backups
sed -i "s/^#\?Port .*/Port 50100/g" /etc/ssh/sshd_config

# run ssh server
ifup eth1
service ssh restart

# exit su
exit
