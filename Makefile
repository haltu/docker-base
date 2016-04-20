#.PHONY: all
all: build

build:
	docker build -t haltu/base:trusty .
#	docker build -t haltu/base:trusty --rm --no-cache=false .
shell:
	docker run --rm -i -t -v `pwd`:/home/foo/foo haltu/base:trusty
clean:
	docker rmi haltu/base:trusty

