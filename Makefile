CC=/home/ssinha/arm/bin/aarch64-linux-android-clang
CFLAGS = -c -I.
INC_DIR=/home/ssinha/libsodium/libsodium-android-armv8-a/include/
DEPS=$(INC_DIR)/sodium.h
SRC_DIR = src
OBJ_DIR = bin
LIBS=-L /home/ssinha/libsodium/libsodium-android-armv8-a/lib/libsodium.so
SRCS=hasher.c
OBJS=hasher.o

all: $(OBJS) 

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@ $(LIBS)

$(OBJ_DIR)/hasher.o: $(DEPS)
