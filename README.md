# Using Docker compose

Inside the docker-files folder run:

To build:

docker compose --no-cache build web

Tu run 

docker compose -d up web 

# Using plain docker 

Create the image with:

```
 docker build --progress=plain -t seaside-docker-example .  
```

Run the container with: 
```
docker run -d -p 8080:8080 -v $(pwd)/data:/opt/pharo/data seaside-docker-example
```

If you waht it to restart on failure on or host restart, run the container with: 
```
docker run -d  --restart unless-stopped -p 8080:8080 -v $(pwd)/data:/opt/pharo/data seaside-docker-example
```
