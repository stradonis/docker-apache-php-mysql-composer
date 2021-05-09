docker example with apache, php, mysql, phpMyAdmin and composer

run docker-compose:
`docker-compose up --build`

phpMyAdmin:
`http://localhost:8000`

put your site in catalog `src`

web browser:
`http://localhost:8001`

run mysql client:
`docker-compose exec db mysql -u root -p` 

bash:
    check image:
        `docker ps`
    and run:
        `docker exec -it docker-image-name bash`

local domain:
    if you want change your local domain see line:
        `extra_hosts:
        - "example-domain.local:172.25.0.2"`
    in `docker-compose.yml` file and apache configuration:
    `apache2/example-domain.local.conf`
    you must add domain in your local file /etc/hosts:
    `172.35.0.2     example-domain.local`
    



