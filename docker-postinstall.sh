#!/bin/bash
sudo groupadd docker || true
sudo usermod -aG docker $USER || true
sudo systemctl enable docker || true
sudo systemctl start docker || true
sudo docker run hello-world || true
