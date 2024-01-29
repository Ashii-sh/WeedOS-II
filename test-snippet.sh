echo "Test Snippet"
sleep 1 

mkdir homefolder
cd homefolder
wget https://cdn.discordapp.com/attachments/926440184411729940/1188717524209119232/UserConfigFolder-12-24-2023.zip
cd .. 
wget https://cdn.discordapp.com/attachments/926440184411729940/1188717523923914792/org.freedesktop.login1.policy
sudo cp -r org.freedesktop.login1.policy /usr/share/polkit-1/
cp -r homefolder/* ${HOME}/
cd..
