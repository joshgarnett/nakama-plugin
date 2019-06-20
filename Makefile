LIBNAME := example

.PHONY: build
build:
	rm -f modules/*.so
	docker run --rm -v "${CURDIR}:/go/src/tempbuild" heroiclabs/nakama-pluginbuilder:2.5.1 build \
		--buildmode=plugin -o ./modules/${LIBNAME}.so ${LIBNAME}.go

.PHONY: run
run: build
	docker-compose up
