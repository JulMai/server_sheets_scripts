
<h1>Unattended Upgrades</h1>

<h2>Install</h2>
~~~
sudo apt install unattended-upgrades
~~~

<h2>Execution Intervall</h2>
Open File:
~~~
vim /etc/apt/apt.conf.d/20auto-upgrades
~~~
Change Intervall:
~~~
# "7" means that the updates are checked weekly
# "1" means daily
APT::Periodic::Update-Package-Lists "7";
~~~
