GITHUB_SHA ?= $(shell git log -1 --pretty=format:"%H")

all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make prep             - do prep work for all images"
	@echo "   2. make build            - build all images"
	@echo "   3. make pull             - pull all images"
	@echo "   4. make clean            - remove all images"
	@echo ""

prep:
	@./build-opt.sh

build: prep
	@docker build --label ade_image_commit_sha=${GITHUB_SHA} --tag=christophebedard/ade-powerline-shell .

pull:
	@docker pull christophebedard/ade-powerline-shell

clean:
	@ rm -rf _opt
	@docker rmi -f christophebedard/ade-powerline-shell
