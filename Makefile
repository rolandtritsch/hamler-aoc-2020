.PHONY : build run test repl

all: build

.PHONY: build
build:
	@hamler build

.PHONY: run
run:
	@hamler run

.PHONY: test
test:
	@hamler test

.PHONY: repl
repl:
	@hamler repl
