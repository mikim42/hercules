# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install_ssh.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+         #
#    GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+            #
#    Created: 2018/02/23 15:14:50 by Mingyun K         #+#    #+#              #
#    Updated: 2018/02/23 16:43:54 by Mingyun K        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# install ssh
sudo apt-get install openssh-server -y
