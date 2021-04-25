docker example with apache, php, mysql, phpMyAdmin and composer

run docker-compose:
`docker-compose up --build`

phpMyAdmin:
`http://localhost:8000`

put your site in catalog src

web browser:
`http://localhost:8001`

run mysql client:
`docker-compose exec db mysql -u root -p` 

bash:
    check image:
        `docker ps`
    and run:
        `docker exec -it docker-image-name bash`

