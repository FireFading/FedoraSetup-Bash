# install selenium
pip install selenium

cd /home/sunrise/Downloads

# get chromedriver
wget https://chromedriver.storage.googleapis.com/103.0.5060.134/chromedriver_linux64.zip
unzip chromedriver_linux64.zip

# install chromedriver
sudo mv chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod +x /usr/local/bin/chromedriver