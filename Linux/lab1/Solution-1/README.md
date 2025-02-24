# Lab 1: Create a new group named ivolve and a new user assigned to this group with a secure password. Configure the user’s permissions to allow installing Nginx with elevated privileges using the sudo tool (run sudo command for installing nginx without password)
## In this lab, you will:

1-Create a group named ivolve.
2-Create a user named ivolveuser.
3-Add the ivolveuser user to the ivolve group.
4-Configure the ivolveuser user to install Nginx without being prompted for a sudo password
## Steps
### 1. Create the ivolve group
```
<<<<<<< HEAD
sudo groupadd ivolveuser
```
### 2. Create the ivolveuser user and add it to ivolve group 
```
sudo adduser ivolve
=======
sudo adduser ivolve
```
### 2. Create the ivolveuser user and add it to ivolve group 
```
sudo groupadd ivolveuser
>>>>>>> e657c83178e3bff26c8bf80dc9b3f166fc9c3ed5
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
# 🙏 Thank You
Thank you for using this script. Your feedback and support mean a lot to us.
