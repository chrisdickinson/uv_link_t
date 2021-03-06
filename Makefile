test:
	./gyp_uv_link test -Duv_dir=./test/deps/libuv
	make -C out/ -j8
	./out/Release/uv_link_t-test

example:
	./gyp_uv_link example -Duv_dir=./test/deps/libuv
	make -C out/ -j8
	./out/Release/uv_link_t-example

dist:
	./gyp_uv_link -Duv_dir=./test/deps/libuv
	make -C out/ -j8

.PHONY: test example dist
