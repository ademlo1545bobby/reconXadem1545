#!/bin/bash
Black='\033[1;30m'        # Siyah
Red='\033[1;31m'          # Kırmızı
Green='\033[1;32m'        # Yeşil
Yellow='\033[1;33m'       # Sarı
Blue='\033[1;34m'         # Mavi
Purple='\033[1;35m'       # Mor
Cyan='\033[1;36m'         # Camgöbeği
White='\033[1;37m'        # Beyaz
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'
brown='\033[0;33m'

logo () {
echo -e "\033[1;34m \t

\t██████╗░███████╗░█████╗░░█████╗░███╗░░██╗░░░░░░██╗░░██╗
\t██╔══██╗██╔════╝██╔══██╗██╔══██╗████╗░██║░░░░░░╚██╗██╔╝
\t██████╔╝█████╗░░██║░░╚═╝██║░░██║██╔██╗██║█████╗░╚███╔╝░
\t██╔══██╗██╔══╝░░██║░░██╗██║░░██║██║╚████║╚════╝░██╔██╗░  
\t██║░░██║███████╗╚█████╔╝╚█████╔╝██║░╚███║░░░░░░██╔╝╚██╗  ${White}by: Yashvendra Kashyap a.k.a y_k_007${Red}
\t╚═╝░░╚═╝╚══════╝░╚════╝░░╚════╝░╚═╝░░╚══╝░░░░░░╚═╝░░╚═╝
";
}

header () {
  echo -e "${blue}[${Green}adem1545${blue}]${White} Paneline Hoş Geldiniz!"
}

actions () {
	echo -e "${Purple}[~] Yapılabilecek işlemler:"	
	echo ""

	echo -e "${Cyan}[1]  Whois"	   #whois	
	echo -e "${Cyan}[2]  Nping"        #nping
	echo -e "${Cyan}[3]  Subdomainler"   #hostsearch
	echo -e "${Cyan}[4]  DNS Sorgulama"    #dnslookup
	echo -e "${Cyan}[5]  Reverse DNS"   #reversedns
	echo -e "${Cyan}[6]  Traceroute"   #mtr
	echo -e "${Cyan}[7]  HTTP Başlıkları"  #httpheaders 
	echo -e "${Cyan}[8]  Sayfa Bağlantıları"    #pagelinks
	echo -e "${Cyan}[9]  ZoneTransfer" #zonetransfer 
	echo -e "${Cyan}[10] GeoIP"        #geoip	
	echo -e "${Cyan}[11] Subnet Hesaplayıcı"   #subnetcalc 	  
	echo -e "${Cyan}[12] Nmap" 	   #nmap	
	echo -e "${Cyan}[13] Paylaşılan DNS"    #findshareddns
	echo -e "${Yellow}[14] Yukarıdakilerin Hepsi"
	echo -e "${Red}[Q]  Çıkış"
}

input () {
        echo -ne "${Green}[#] Host Adı Girin: ${White}"
	read hostname;
}

whois () {
	#input
	echo -e "${Blue}+--------------------------------+${White}"
	echo -e "${Blue}+            ${Yellow}[${Green}Whois${Yellow}]${Blue}             +${White}"
	echo -e "${Blue}+--------------------------------+${White}"
	curl https://api.hackertarget.com/whois/?q=$hostname --connect-timeout 15
}

nping () {
	echo	
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}NPing${Yellow}]${Blue}             +${White}"
        echo -e "${Blue}+--------------------------------+${White}"
 
        curl https://api.hackertarget.com/nping/?q=$hostname --connect-timeout 15
}

subdomains () {
	#input
        #echo -e "${Red}------------------------------------${white}"
       
	echo
	echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}Subdomainler${Yellow}]${Blue}           +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

	curl https://api.hackertarget.com/hostsearch/?q=$hostname --connect-timeout 15 
}

dnslookup () {
	#input
        #echo -e "${Red}------------------------------------${white}"
        echo
	echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+          ${Yellow}[${Green}DNS Sorgulama${Yellow}]${Blue}           +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/dnslookup/?q=$hostname --connect-timeout 15
}

reversedns () {
	#input
        #echo -e "${Red}------------------------------------${white}"
        echo
	echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}Reverse DNS${Yellow}]${Blue}           +${White}"
        echo -e "${Blue}+--------------------------------+${White}"
	ip=$(curl https://api.hackertarget.com/hostsearch/?q=$hostname --connect-timeout 15 | grep "$hostname" | sed 's/.*,//')
        curl https://api.hackertarget.com/reversedns/?q=$ip --connect-timeout 15
}

traceroute () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}Traceroute${Yellow}]${Blue}           +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/mtr/?q=$hostname --connect-timeout 15
}

httpheaders () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+        ${Yellow}[${Green}HTTP Başlıkları${Yellow}]${Blue}           +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/httpheaders/?q=$hostname --connect-timeout 15
}

pagelinks () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}Sayfa Bağlantıları${Yellow}]${Blue}            +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/pagelinks/?q=$hostname --connect-timeout 15
}

zonetransfer () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+        ${Yellow}[${Green}ZoneTransfer${Yellow}]${Blue}          +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/zonetransfer/?q=$hostname --connect-timeout 15
}

geoip () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}GeoIP${Yellow}]${Blue}             +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/geoip/?q=$hostname --connect-timeout 15
}

subnetcalc () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+          ${Yellow}[${Green}Subnet Hesaplayıcı${Yellow}]${Blue}          +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/subnetcalc/?q=$hostname --connect-timeout 15
}

Nmap () {
 	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}Nmap${Yellow}]${Blue}              +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/nmap/?q=$hostname --connect-timeout 15
}

shareddns () {
	#input
        #echo -e "${Red}------------------------------------${white}"
	echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+          ${Yellow}[${Green}Paylaşılan DNS${Yellow}]${Blue}           +${White}"
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/findshareddns/?q=$hostname --connect-timeout 15
}

alloftheabove (){
	whois
	nping
        subdomains
        dnslookup 
        reversedns 
        traceroute 
        httpheaders
        pagelinks 
        zonetransfer 
	geoip 
	subnetcalc 
	Nmap
}