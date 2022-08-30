.PHONY: clean install-deps run


install-deps:
	git submodule update --init --recursive
	poetry install

quisp/quisp/quisp:
	make -C quisp

quisp-binary: quisp/quisp/quisp

run: quisp-binary
	poetry shell
	quispr run -f --quisp-root ./quisp
