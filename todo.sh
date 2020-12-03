sudo docker-compose up -d
sudo docker-compose down
sudo docker-compose logs

sudo docker stop 20a518c2670f
sudo docker rm  20a518c2670f

sudo docker container logs 20a518c2670f -f

sudo docker exec -it "$(sudo docker ps -qf currenttime42.com-wsgi)" sh
sudo docker exec -it "6cb037e8bc4f87a8b21e8a51da92b578064c48aae4d0b47d247c64948b8ced83" sh



sudo docker run -p 8091:8080 -v /home/www-data/currenttime42/static:/code/static -v /home/www-data/currenttime42/templates:/code/templates --env-file /home/ubuntu/currenttime42.env currenttime42.com-wsgi


sudo docker run -p 8091:8080 -v /home/www-data/currenttime42/static:/code/static -v /home/www-data/currenttime42/templates:/code/templates -v /home/www-data/currenttime42/webpack-stats-prod.json:/code/webpack-stats-prod.json --env-file /home/ubuntu/currenttime42.env --rm --name currenttime42.com-wsgi currenttime42.com-wsgi
