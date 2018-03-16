# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    boar.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/13 10:20:51 by mikim             #+#    #+#              #
#    Updated: 2018/03/16 02:02:07 by kimminseo        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#
#  Mingyun Kim
#  https://www.github.com/mikim42
#

FILE=/var/at/at.allow
LOG_USER=$LOGNAME
OUT=`tty`

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist 2> /dev/null;

echo "echo \"
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\\\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyso/:---:/+syyyyyyyyyyyyyyyyyysyyyyyyyyyyyyyyyy+./yyyyyyyyyyyyyyyyyyyyyy/:yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys/..:/+oo+:.-syyyyyyyyyyyyyyyy+\\\`oyyyyyyyyyyyyyyy/ :yyyyyyyyyyyyyyyyyyyyyy.\\\`syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys. :syyyyyyyyyyyyyyysooosyyyyys: /ssyyyyysooosyyy/ :ysooosyyyyysoooosyyyyy.\\\`syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy: -yyyyyyyyyyyyyyy/.-:/:-.+yyo:\\\` -::+yy+..:/:-:yy/ .::/:..+yyy/--::-\\\`:yyyy.\\\`syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy- /yyyyyysoooosyy: /yyyys: /yyy- oyyyy/ -yyyyyyyy/ -syyys\\\`\\\`yyyssyyyy- +yyy..syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy: -yyyyyyo::. /ys\\\`\\\`syyyyyo -yyy- oyyyy. oyyyyyyyy/ :yyyyy\\\` syyys+///. +yyy::yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys. /yyyyyyyy/ /ys.\\\`oyyyyy+ -yyy- oyyyy- +yyyyyyyy/ :yyyyy\\\` syo.-+oss: +yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys:\\\`./oosso+.\\\`+yy+\\\`.+sss+\\\`.oyyy- /sosyo.\\\`/sss+/sy/ :yyyyy\\\` sy: /sys+. +yys::syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+/--..-:/oyyyys+:---:+yyyyys:.-:oyyy+:---:+yy+-+yyyyy:-yyy/--:/+o-oyys--syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyhhhhhhhhhhhhhyyyhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyhhhhhhhhhhhyyyyhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyhhhhhhhhhhhyyyyhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyhhhhhhhhhhhyyyyhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyhhhhhhhhhhhhyyyhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyhhhdhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhddhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhyyyyyssssyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhhhhhhddhyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhyyysssoooosssyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhhhhhhddhyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhyyssoo+++++oossyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhhhhhhdddhyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhyyysso+++/+++ossyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhhhhhhddhyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhyyyssoo+++++oossyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyhhhhhhdddhyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhyyyysoo++++oossyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyhhhhhhhddhhyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhyyyssoooooossyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyhhhhhhdddhyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhyyyssssssssyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhyyhhhhhhdddhyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhyyyyysssyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhyhhhhhhhhddddyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyhhyhhhhhhhddddhyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyhhhhhhhhhhddddhyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyhhhhhhhhhddddhyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyhhhhhhhhdddhhyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyysshhhhhhhhhhhhhhhhhhhhhhhhhhhhhdmmNNNNNNNNNNNNNmmdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyhhhhhhhhdddyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyysoddhhhhhhhhhhhhhhhhhhhhhhhhdmNNNNNNNNNNNNNNNNNNNNNmdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyhhhhhhhhhhddooyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+hNmdhhhhhhhhhhhhhhhhhhhhdNNNNNNNNNmdhhhhddmNNNNNNNNmdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyhhhhhhhdmNd+oyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo:odNNmdhhhhhhhhhhhhhhhhhmNNNNNNmhs/--.....-:/oydNNNNNNNdhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyhhhhhhdmNNms+syyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy.:ohNNNNNmdhhyyyhhhhhhhmNNNNNNy/.\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`.:ohmNNNNNmhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyhhhdmNNNNdo+/yyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy: ./odNNNNNNmmdhhhyhhhdNNNNNm/\\\`\\\`\\\`\\\`\\\`.--::::--.....-odNNNNNNdhhhhhhhhhhhhhhhhhhhhhhhyyyyyyhhdmNNNNNNmy+//+yyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo   \\\`:ohmNNNNNNNNmmdddNNNNNm/\\\`\\\`\\\`.-:::-..--:++/-..../hNNNNNNhhhhhhhhhhhhhhhhhhhhyhhhhddmNNNNNNNNNds++///syyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy:    \\\`.:oydNNNNNNNNNNNNNNNo\\\`\\\`\\\`.-:.\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`-/o/-...:hNNNNNmhhhhhhhhhhhhhhdddmmmNNNNNNNNNNNNmhyo++////+yyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy-      \\\`.-/sydmNNNNNNNNNN/\\\`\\\`.-:\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`.....-s/-..-+mNNNNNmddmmmmmNNNNNNNNNNNNNNNNNNNNmdys+++++/////syyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys\\\`         \\\`\\\`.:/oydmNNNNN/\\\`..:-\\\`\\\`\\\`.........--:s:---:dNNNNNNNNNNNNNNNNNNNNNNNNNNNmdhyso++/+++++/////syyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo\\\`      \\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`..:yNNNNs...--\\\`........-----:s:---:dNNNNNNNNNNNNNNNNNNNmddhysoo++/////++++++/////oyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy+      \\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`:hNNNN/...:-....------:::++:---/mNNNNNmmddhhyysooo++//////////////+++++++////oyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy/      \\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`./hNNNN+...-:------::::/++:--:/hNNNNNd/::::::::///////////////////++++++////oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy/     \\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`../yNNNNy:.--:://:://+++/::::/dNNNNNm/:::::::////////////////////+++++/////oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo\\\`    \\\`\\\`\\\`\\\`\\\`\\\`\\\`\\\`....-sdNNNmy+-----::::::::::/ymNNNNNd+::::::////////////////////++++++/////syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys-    \\\`\\\`\\\`\\\`\\\`\\\`.......+ydNNNNmhs+/::::://oydNNNNNNms/:::://////////////////////++++++////+yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy+\\\`  \\\`\\\`\\\`\\\`\\\`\\\`........-/ohdNNNNNNmmmmmmNNNNNNNNdy+:::://///////////////////+++++++/////oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys-\\\`\\\`\\\`\\\`\\\`\\\`\\\`..........-:/oshdmmNNNNNNNNNmdhs+////////////////////////////+++++/////+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhyo-\\\`\\\`\\\`\\\`\\\`\\\`........-----::/++oosssooo++//////////////////////////////+++++/////+syhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhyhhhhhhhhhhhys:.\\\`\\\`\\\`........---------::::::::::::://////////////////////////++++//////+shhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhs+.\\\`.........--------:::::::::::::////////////////////////+++///////oyhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhy+:........----------::::::::::::://///////////////////////////+oyhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhs+:.....----------::::::::::::://////////////////////////+oyhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdhhyo/:-----------::::::::::::////////////////////////+syhhhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhddddddddhyo+::------:::::::::::::///////////////////osyhdddddddhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhdddddddddddddhhyo+/::---::::::::::::::::::::////+oyhhddddddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhddddddddddddddddddddhyysso+++//////////++oossyhhdddddddddddddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyy\n\\
yyyyyyyyyyyyyyyyyyyyyyhhhhhhhhhhhhhhhhhhhhhhhhhhhhddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddhhhhhhhhhhhhhhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyy\n\\
\" > $OUT" > gotcha.sh
chmod 755 gotcha.sh

if ! cat "$FILE" | grep -q "$LOG_USER" 2>&1; then
	echo "$LOG_USER" | sudo tee -a /var/at/at.allow 2> /dev/null;
fi

#at 8:42 AM 12/21 < gotcha.sh 2> /dev/null	# BOAR
at + 1 minute < gotcha.sh 2> /dev/null		# TEST

rm -f gotcha.sh
atq
