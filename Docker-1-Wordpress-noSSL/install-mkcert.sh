#install mkcert on deb
#sudo chmod +x script.sh
#!/bin/bash

# install certutil
sudo apt install libnss3-tools

# use the pre-built binaries.

curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64"
chmod +x mkcert-v*-linux-amd64
sudo cp mkcert-v*-linux-amd64 /usr/local/bin/mkcert

#Created a new local CA 
 mkcert -install
