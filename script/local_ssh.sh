# creates a ssh server listening at address 127.0.0.1:2222
sudo mkdir -p /run/sshd
sudo ssh-keygen -A
sudo /usr/sbin/sshd -D -ddd -e -p 2222 -o ListenAddress=127.0.0.1