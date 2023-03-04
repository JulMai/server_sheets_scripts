
echo "This script was developed for Ubuntu 22.04 LTS.\n"
echo "It tries to install docker on your Ubuntu system following docs.docker.com (03/23)."

while true; do
    read -p "Did you update/upgrade the system before executing the script? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo "Installing dependencies..."

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


echo "Adding keyrings..."

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


echo "Setting up the Repository..."

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Updating
sudo apt-get update


echo "Installing docker..."
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin


while true; do
    read -p "Do you want to install docker-compose? " yn
    case $yn in
        [Yy]* ) sudo apt-get install docker-compose-plugin break;;              
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

