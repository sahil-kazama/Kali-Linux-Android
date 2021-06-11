#!/data/data/com.termux/files/usr/bin/bash

cmd=cmd
cmd=execute
reset
#-------------------------------------------------#
echo "
 ██ ▄█▀▄▄▄       ██▓     ██▓
 ██▄█▒▒████▄    ▓██▒    ▓██▒
▓███▄░▒██  ▀█▄  ▒██░    ▒██▒
▓██ █▄░██▄▄▄▄██ ▒██░    ░██░
▒██▒ █▄▓█   ▓██▒░██████▒░██░
▒ ▒▒ ▓▒▒▒   ▓▒█░░ ▒░▓  ░░▓  
░ ░▒ ▒░ ▒   ▒▒ ░░ ░ ▒  ░ ▒ ░
░ ░░ ░  ░   ▒     ░ ░    ▒ ░
░  ░        ░  ░    ░  ░ ░  
                           
"
sleep 5s
echo "  [INSTALL] ~> Installing Kali-Linuxin Android ..(arch=arm64)  
"
sleep 5s
echo "  [PERMISSION] -> Change Some Permission....  
"
sleep 3s
termux-setup-storage
echo "  [REPO] -> Change Some Repository....  
"
sleep 3s
termux-change-repo
echo "  [UPGRADE] -> Upgrading Your System....  
"
sleep 3s
apt dist-upgrade
echo "  [CORE] -> Installing Core Packages....  
"
sleep 5s
pkg install curl openssl-tool proot wget tar p7zip 
hash -r
mv gdrive /bin/
echo "  [DOWNLOAD] -> Downloading Kali Linux ISO....  
"
sleep 3s
gdrive https://drive.google.com/file/d/1jMB0zMacntYBcqvdefZIBgVEY4V4yfZb/view?usp=sharing
echo "  [INSTALL] => Installing KALI-LINUX in Android....  
"
sleep 3s
7z x kali-linux-arm64.iso
rm kali-linux-arm64.iso
tar -xvf KALI_TAR.XZ
rm KALI_TAR.XZ
cd kali-linux-arm64/
mv * $HOME
cd $HOME
rm -r kali-linux-arm64/
mv start-kali.sh kali
chmod +x kali
mv kali /bin/
echo "  (RUN) = Now Run Type 'kali' 
  to Start Kali Linux in Android  "
sleeep 10
kali
echo "AUTHORS:Sahil Kazuya
YOUTUBE:https://www.youtube.com/channel/UC5YEPL69w385mQCKi_-Lrtw
Please Subscribed My Youtube Channel
"
#-------------------------------------------------#
