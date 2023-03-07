
<h1>Disable Root Login</h1>

Open File:
~~~
sudo vim /etc/ssh/sshd_config
~~~

Change the value for PasswordAuthentication:
~~~
PermitRootLogin no
~~~

Save File and reload ssh service:
~~~
sudo systemctl reload sshd
~~~
Or:
~~~
sudo service ssh restart
~~~
