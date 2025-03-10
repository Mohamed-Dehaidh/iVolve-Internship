# Lab 1: Create a new group named ivolve and a new user assigned to this group with a secure password. Configure the user’s permissions to allow installing Nginx with elevated privileges using the sudo tool (run sudo command for installing nginx without password)
## In this lab, you will:

1-Create a group named ivolve.
2-Create a user named ivolveuser.
3-Add the ivolveuser user to the ivolve group.
4-Configure the ivolveuser user to install Nginx without being prompted for a sudo password
## Steps
### 1. Create the ivolve group
```
sudo groupadd ivolve
```
### 2. Create the ivolveuser user and add it to ivolve group 
```
sudo useradd -mG ivolve ivolveuser
```
### 3. Add password to ivolveuser
```
sudo passwd ivolveuser
```
### 4. Modify sudoers file to allow passwordless Nginx installation
```
sudo visudo
ivolveuser ALL=(ALL) NOPASSWD: /usr/bin/apt install nginx
```
### 5. Test to install httpd 
```
su - ivolveuser
sudo apt install httpd
```
### 6. Test to install Nginx
```
sudo apt install nginx
```
