SSH_HOSTNAME:=ubuntu@currenttime42

all:
	scp docker-compose.yml $(SSH_HOSTNAME):docker-compose.yml
	make -B stop
	make -B start
	make -B logs
	# /usr/local/bin/docker-compose-ssh

start:
	ssh $(SSH_HOSTNAME) sudo docker-compose up -d

stop:
	ssh $(SSH_HOSTNAME) sudo docker-compose down;:

ps:
	ssh $(SSH_HOSTNAME) sudo docker ps

logs:
	ssh $(SSH_HOSTNAME) sudo docker-compose logs

# sudo docker container logs currenttime42.com-wsgi -f
