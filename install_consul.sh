sudo apt-get update
# Dependencies
sudo apt-get install -y unzip
echo "Downloading Consul, please wait..."
wget -q https://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip
wget -q https://dl.bintray.com/mitchellh/consul/0.5.0_web_ui.zip
echo "Download complete, finishing install"
unzip 0.5.0_linux_amd64.zip
chmod +x consul
mv consul /usr/local/bin/consul
unzip 0.5.0_web_ui.zip
mkdir -p /usr/share/consul/ui
mv -v dist/* /usr/share/consul/ui
echo "Installation complete"
