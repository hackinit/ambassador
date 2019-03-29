# How To Start the quill Service 

``` bash
# in a new local directory

docker pull mongo

docker run -p 27017:27017 -v <LocalDirectoryPath>:/data/db --name db -d mongo

# go to repository
docker build --tag=hackquill:1.0 .
docker run -it -p 3000:3000 --name testver --link db:db hackquill:1.0 gulp server
```





