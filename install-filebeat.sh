#!/bin/bash                                                                                                                                                                                    
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -                                                                                                             
sudo apt-get install apt-transport-https                                                                                                                                                       
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list                                                                    
sudo apt-get update && sudo apt-get install filebeat                                                                                                                                           
sudo cp /home/ubuntu/elastic/filebeat.yml /etc/filebeat/                                                                                                                                       
sudo filebeat modules enable zeek                                                                                                                                                              
sudo cp -f /home/ubuntu/elastic/zeek.yml /etc/filebeat/modules.d/ 
sudo update-rc.d filebeat defaults 95 10
sudo filebeat setup
