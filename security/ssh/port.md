
<h1>Change ssh port</h1>

Open File:
~~~
sudo vim /etc/ssh/sshd_config
~~~

Uncomment line and change port number:
~~~
#Port 22
~~~

~~~
Port 69
~~~

Save File and reload ssh service:
~~~
sudo systemctl reload sshd
~~~

Optional:
Allow the new port in UFW:
~~~
sudo ufw allow 69/tcp
~~~
