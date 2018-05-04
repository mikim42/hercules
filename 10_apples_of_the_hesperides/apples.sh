# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    apples.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/04 10:50:29 by mikim             #+#    #+#              #
#    Updated: 2018/05/04 11:09:32 by mikim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                                               Mingyun Kim    #
#                                            https://www.github.com/mikim42    #
# **************************************************************************** #

#!/bin/bash

if [ -z "$1" ]; then
	echo "usage: sh $0 \"name@ip -p port\""
	exit 1
fi

# Generate RSA key
ssh-keygen

ssh-copy-id $1

ssh $1 'chmod 640 .ssh/authorized_keys'

echo "------------------------------------------------------------------"
echo "Make sure that .ssh/authorized_keys and all the upper directories'"
echo "in the guest have group-read and no group-write permission"
