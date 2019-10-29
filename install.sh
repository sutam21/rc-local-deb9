#!/bin/bash
cd /etc/apt/
mv sources.list sources.bak
touch sources.list
echo "deb http://kartolo.sby.datautama.net.id/debian stretch main contrib non-free" >> sources.list
echo "deb http://kartolo.sby.datautama.net.id/debian stretch-updates main contrib non-free" >> sources.list
echo "deb http://kartolo.sby.datautama.net.id/debian stretch-backports main contrib non-free" >> sources.list
echo "deb http://security.debian.org/debian-security stretch/updates main contrib non-free" >> sources.list
apt-get update
apt-get install wget git figlet
clear
figlet "Sutam Project"
echo "Creator : Rafli Setiawan "
echo "SMK N 1 KEJOBONG"
echo ""
echo "Prepairing to installing rc-local.service"
echo ""
echo -ne '###                               (10%)\r'
sleep 1
echo -ne '######                            (20%)\r'
sleep 1
echo -ne '#########                         (30%)\r'
sleep 1
echo -ne '############                      (40%)\r'
sleep 1
echo -ne '###############                   (50%)\r'
sleep 1
echo -ne '##################                (60%)\r'
sleep 1
echo -ne '#####################             (70%)\r'
sleep 1
echo -ne '########################          (80%)\r'
sleep 1
echo -ne '###########################       (90%)\r'
sleep 1
echo -ne '##############################    (100%)\r'
echo -ne '\n'
clear

cd /etc/systemd/system/
touch rc-local.service
echo "[Unit]" >> rc-local.service
echo "Description=/etc/rc.local" >> rc-local.service
echo "ConditionPathExists=/etc/rc.local" >> rc-local.service
echo "" >> rc-local.service
echo "[Service]" >> rc-local.service
echo "Type=forking" >> rc-local.service
echo "ExecStart=/etc/rc.local start" >> rc-local.service
echo "TimeoutSec=0" >> rc-local.service
echo "StandardOutput=tty" >> rc-local.service
echo "RemainAfterExit=yes" >> rc-local.service
echo "SysVStartPriority=99" >> rc-local.service
echo ""
echo "[Install]" >> rc-local.service
echo "WantedBy=multi-user.target" >> rc-local.service
clear
cd /etc/
touch rc.local
echo '#!/bin/sh -e' >> rc.local
echo '#' >> rc.local
echo '# rc.local' >> rc.local
echo '#' >> rc.local
echo '# This script is executed at the end of each multiuser runlevel.' >> rc.local
echo '# Make sure that the script will "exit 0" on success or any other' >> rc.local
echo '# value on error.' >> rc.local
echo '#' >> rc.local
echo '# In order to enable or disable this script just change the execution' >> rc.local
echo '# bits.' >> rc.local
echo '#' >> rc.local
echo '# By default this script does nothing.' >> rc.local
echo ''
echo 'exit 0' >> rc.local
chmod +x rc.local
systemctl enable rc-local
sleep 1
systemctl start rc-local.service
sleep 1
systemctl status rc-local.service
clear
figlet "Sutam Project"
echo ""
echo "Terima Kasih Telah Menggunakan Script Kami"
