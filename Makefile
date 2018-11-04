all: shubh_i2c

#install :
#	cp ./shubh_i2c ${TARGET_DIR}/bin/

CC=gcc
CC_FLAGS =  -I.
LD_FLAGS = -lwiringPi
EXEC = shubh_i2c 
SOURCES = $(wildcard *.c)
HEADERS = $(wildcard *.h)
OBJECTS = $(SOURCES:.c=.o)

# Main target
$(EXEC): $(OBJECTS)
	$(CC) $(OBJECTS) $(LD_FLAGS) -o $(EXEC)

# To obtain object files
%.o: %.c $(HEADERS)
	$(CC) -c $(CC_FLAGS) $< -o $@

# To remove generated files
clean:
	rm -rf $(EXEC) $(OBJECTS)

