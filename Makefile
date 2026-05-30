<<<<<<< HEAD
NGINX_VERSION=1.11.0
=======
.PHONY: build
>>>>>>> eec8937 (Simplify it build by freebsd-ports)

build:
	@cp FreeBSD/Makefile /usr/ports/www/openresty/
	@make -C /usr/ports/www/openresty/ install-missing-packages
	@make -C /usr/ports/www/openresty/

<<<<<<< HEAD
build: tmp/$(NGINX_VERSION)/nginx-$(NGINX_VERSION)/objs/nginx

tmp/$(NGINX_VERSION)/nginx-$(NGINX_VERSION)/objs/nginx : src/*.c nginx-build nginx-build.ini
	nginx-build -verbose -v=$(NGINX_VERSION) -d tmp/ -m nginx-build.ini

clean:
	if [ -d tmp/$(NGINX_VERSION)/nginx-$(NGINX_VERSION) ]; then rm -rf tmp/$(NGINX_VERSION)/nginx-$(NGINX_VERSION); fi

nginx-build:
	if ! nginx-build -version > /dev/null; then go get -u github.com/cubicdaiya/nginx-build; fi; true

nginx-build.ini:
	echo "[ngx_dynamic_upstream]\nform=local\nurl=`pwd`" > nginx-build.ini

cpanm:
	curl -L https://cpanmin.us/ -o cpanm
	chmod +x cpanm

install-perl-lib: cpanm
	./cpanm -l tmp/perl Test::Harness
	./cpanm -l tmp/perl Test::Nginx

.PHONY: build check clean nginx-build install-perl-lib
=======
>>>>>>> eec8937 (Simplify it build by freebsd-ports)
