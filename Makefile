all:
	# Docker Compose not work in 42 ubuntu, I use commands:
	@mkdir -p ~/42cursus/
	docker build -t paco_img . 
	docker run -it -v ~/42cursus:/42cursus/ paco_img /bin/bash
	
run:
	docker run -it -v ~/42cursus:/42cursus/ paco_img /bin/bash

fclean:
		@docker stop $$(docker ps -qa)
		@docker system prune --all --force --volumes
		@docker network prune --force
		@docker volume prune --force
		@docker volume rm $(docker volume ls -q)

.PHONY: all run fclean