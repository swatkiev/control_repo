# Automount FTP to /etc/fstab
https://wiki.archlinux.org/title/CurlFtpFS

# Download and install curlftpfs on host:
sudo apt-get install curlftpfs

# Create catalog for FTP:
sudo mkdir -p /home/ftp/

# Open fstab and add new line:
sudo nano /etc/fstab

curlftpfs#ftp://{login}:{password}@{ftp_ip_host}/home/ /home/ftp/ fuse rw,allow_other,user 0 0

# Mount FTP on host:  
sudo mount -a

# FTP on Windows host: 

C:\Users\Administrator>FTPUSE Z: {ftp_ip_host}/home {password} /PORT:21 /USER:{login}

https://www.ferrobackup.com/map-ftp-as-disk.html

https://www.digitalcitizen.life/map-network-drive-ftp-websites-windows-10/
