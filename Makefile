MOZ_FOLDER:=$(shell echo $${MOZ_FOLDER:-/home/jan/Repositories/OzunaTest/mozart2})
build: 
	git clone --recursive https://github.com/mozart/mozart2
	docker build -t debian-oz .
run:
	docker run -it --rm -v $(MOZ_FOLDER):/home/user/src/mozart2 debian-oz /root/bash_as_current_user.sh `id -u` `id -g` /home/user/src
