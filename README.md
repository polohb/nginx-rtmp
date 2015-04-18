# nginx-rtmp
Docker Nginx with rtmp module.

Include a jwplayer rtmp viewer for html.

## Makefile

`all` : do `stop clean build run` tasks

`build` : build the image locally

`run`: run the image with port bind 1935 and 8080 

`clean` : force remove of the container 

`stop` : simply stop the container

`log`: simply log with follow mode activated 

`port`: list port mappings on the container

`enter`: enter the container in bash mode

