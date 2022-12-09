# Automount FTP to /etc/fstab

# Download and install curlftpfs on host:
sudo apt-get install curlftpfs

# Create catalog for FTP:
sudo mkdir -p /home/ftp/

# Open fstab and add new line:
sudo nano /etc/fstab

curlftpfs#ftp://{login}:{password}@{ftp_ip_host}/home/ /home/ftp/ fuse rw,allow_other,user 0 0

# Mount FTP on host:  
sudo mount -a
