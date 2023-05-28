default: install

all: hooks install build


h help:
	@grep '^[a-z]' Makefile


.PHONY: hooks
hooks:
	cd .git/hooks && ln -s -f ../../hooks/pre-push pre-push

install:
	cargo install mdbook
	cargo install mdbook-linkcheck

pi page-install:
	cargo install mdbook
	mkdir -p mdbook-linkcheck && cd "$_" && \
  	curl -L https://github.com/Michael-F-Bryan/mdbook-linkcheck/releases/latest/download/mdbook-linkcheck.x86_64-unknown-linux-gnu.zip -o mdbook-linkcheck.zip && \
 	unzip "$_" && \
  	chmod +x mdbook-linkcheck && \
  	export PATH=$PWD:$PATH && \
  	cd ..

s serve:
	mdbook serve


build:
	mdbook build
