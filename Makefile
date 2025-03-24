# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -O2

# Target executable
TARGET = factorial

# Source file
SRC = factorial.c

# Default rule: Build the executable
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean up the compiled binary
clean:
	rm -f $(TARGET)

