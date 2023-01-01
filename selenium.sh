# install selenium
pip install selenium

cd ~/Downloads

# get chromedriver
wget https://chromedriver.storage.googleapis.com/107.0.5304.62/chromedriver_linux64.zip
unzip chromedriver_linux64.zip

# install chromedriver
sudo mv chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod +x /usr/local/bin/chromedriver