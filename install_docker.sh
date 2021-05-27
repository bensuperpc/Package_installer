sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
docker run hello-world
