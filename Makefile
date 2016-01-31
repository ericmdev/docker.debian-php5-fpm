# Build the image.
.PHONY: build
build:
	docker build -t php5-fpm-image -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop php5-fpm-container
	docker rm php5-fpm-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rm php5-fpm-image

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# List all images.
.PHONY: logs
logs:
	docker logs php5-fpm-container

# Run the interactive container.
.PHONY: run
run:
	docker run -d --name php5-fpm-container -p 9090:9000 php5-fpm-image
	
# Execute the interactive bash of the container.
.PHONY: exec
exec:
	docker exec -it php5-fpm-container bash