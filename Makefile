

IMG_NAME = polohb/nginx-rtmp
CONTAINER_NAME = nginx-rtmp

build:
	docker build -t $(IMG_NAME) .

run:
	docker run -d -p 1935:1935 --name $(CONTAINER_NAME) $(IMG_NAME)

clean:
	docker rm -v -f $(CONTAINER_NAME)

stop:
	docker stop $(CONTAINER_NAME)


log:
	docker logs -f $(CONTAINER_NAME)

port:
	docker port $(CONTAINER_NAME)

enter:
	docker exec -it $(CONTAINER_NAME) /bin/bash
