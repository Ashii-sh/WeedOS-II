echo "Test Snippet"
sleep 1

mkdir cache 
cd cache 
wget https://cdn.discordapp.com/attachments/926440184411729940/1203075931682504744/85-suspend.rules
sudo cp -r 85-suspend.rules /etc/polkit-1/rules.d/

