# Mailoney Docker
Docker container for Mailoney SMTP Honeypot

# Overview
This image sets up the Mailoney honeypot in an Ubuntu Docker container.

More details can be found at https://github.com/awhitehatter/mailoney

# Instructions

<b>git clone https://github.com/awhitehatter/mailoney.git</b>

Go ahead and create the log file in Mailoney:<br>
<b>mkdir mailoney/logs</b></br>
<b>touch mailoney/logs/commands.log</b>


Add the Dockerfile for Mailoney-Docker and run:

<b>docker build --rm -t mailoney .</b><br>
<b>docker network create --subnet=172.18.0.1/16 honeynetwork</b><br>
<b>docker run --net honeynetwork --ip 172.18.0.2 -dit -p 2525:2525 --name mailoney-app mailoney</b>
  
<b>Note:</b> If you change the network above, you must also change it in your Dockerfile.

You can set up iptables:<br>
<b>sudo iptables -t nat -A PREROUTING -p tcp --dport 25 -j REDIRECT --to-port 2525</b>

Now you can connect to port 25.
