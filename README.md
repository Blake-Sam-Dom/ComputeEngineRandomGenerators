# Random Number Generator

## Compute Engine

For Compute Engine, you must be running a Linux image, preferably Ubuntu 18.04 or newer and have the following packages installed:

```
apache2
python3
python3-pip
default-jre
default-jdk
```
After these packages have been installed, Apache must be set up to enable CGI scripts. This is accomplished by running the following on the command line:
First, point the python executable at the python3 location:
```
sudo rm /usr/bin/python
sudo ln -s /usr/bin/python /usr/bin/python3
```
Then, set up the two directories needed for the two implementations of the random number generator:

```
sudo mkdir /var/www/java
sudo mkdir /var/www/python
```
Next, Python must be registered with Apache and Apache configured to execute scripts:
```
sudo a2dismod mpm_event
sudo a2enmod mpm_prefork cgi
```
From here, copy the RandGen.java and RandGen.shtml files into /var/www/java, the index.py file into /var/www/python and make the scripts executable:
```
sudo javac /var/www/RandGen.java
sudo chmod 755 /var/www/java/RandGen.shtml
sudo chmod 755 /var/python/index.py
```
Almost done! from here, the only thing that needs done is to restart Apache:
```
sudo systemctl restart apache2
```
Your random number generator on Compute Engine is now set up! To verify it's random enough, run the ```verify.sh``` file on your server instance.
