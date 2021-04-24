# Basic instructions

Create the image with:

```
 docker build --progress=plain -t seaside-docker-example .  
```

Run the container with: 
```
docker run -p 8080:8080 -v $(pwd)/data:/opt/pharo/data seaside-docker-example
```
