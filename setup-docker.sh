sudo tee /etc/modules-load.d/loop.conf <<< "loop"
modprobe loop

sudo systemctl start docker.service
sudo systemctl enable docker.service

sudo usermod -aG docker stuart
