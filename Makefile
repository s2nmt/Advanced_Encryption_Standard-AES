# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g

# Source file
SRC = test.c aes.c 

# Object file
OBJ = $(SRC:.c=.o)

# Executable name
TARGET = test

# Default rule
all: $(TARGET) run

# Link
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Compile
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
clean:
	del $(TARGET) $(OBJ)
	del test.exe

run: $(TARGET)
	./$(TARGET)