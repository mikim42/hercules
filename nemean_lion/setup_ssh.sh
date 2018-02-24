# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup_ssh.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+         #
#    GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+            #
#    Created: 2018/02/23 15:40:45 by Mingyun K         #+#    #+#              #
#    Updated: 2018/02/23 16:42:47 by Mingyun K        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# getting permission
su

# make a back-up
cp /etc/network/interfaces /etc/network/interfaces-backup

# append
echo "auto eth1" >> /etc/network/interfaces
echo "iface eth1 inet static" >> /etc/network/interfaces
echo "address 192.168.56.10" >> /etc/network/interfaces
echo "netmask 255.255.255.0" >> /etc/network/interfaces

# exit su
exit

# run ssh server
sudo ifup eth1
