SKYNET_PATH = skynet
TARGET = luaclib/package.so

$(TARGET) : src/service_package.c
	gcc -Wall -O2 --shared -fPIC -o $@ $^ -I$(SKYNET_PATH)/skynet-src

socket :
	cd 3rd/lsocket && $(MAKE) LUA_INCLUDE=./skynet/3rd/lua

clean :
	rm $(TARGET)
