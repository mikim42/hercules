# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    zeus.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/14 20:43:02 by mikim             #+#    #+#              #
#    Updated: 2018/04/14 21:21:43 by mikim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                                               Mingyun Kim    #
#                                            https://www.github.com/mikim42    #
# **************************************************************************** #

#!/bin/bash

./manger &
sleep 5

# Any one of them will kill manger and eurystheus
# if you run the command "hexdump -C manger", you can see that
# manger has the pre-defined names.
pkill -1 podargos ruins lampon xanthos yes crap -bash eurystheus
#pkill -6 podargos ruins lampon xanthos yes crap -bash eurystheus

# 1 - HUP: hang up
# 6 - ABRT: abort
# 9 - KILL: kill process
# 17 - STOP: stop process
# more info: man 7 signal

rm -rf *.poo
rm -rf *.dummy*
