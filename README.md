# Mailoney Docker
Docker container for Mailoney SMTP Honeypot

# Overview
This image sets up Mailoney in an Ubuntu container.

More details can be found at https://github.com/awhitehatter/mailoney

# Instructions

<b>git clone https://github.com/awhitehatter/mailoney.git</b>

Add the Dockerfile for Mailoney-Docker and run:

<b>docker build --rm -t mailoney .</b><br>
<b>docker run -dit -p 2525:2525 --name mailoney-app mailoney</b>
