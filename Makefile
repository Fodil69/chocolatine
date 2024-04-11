##
## EPITECH PROJECT, 2023
## my_paint
## File description:
## Makefile
##

CC                := gcc
CFLAGS            := -c -Wall -g3
LDFLAGS           := -g3 $(LIB)
EXECUTABLE        := mysh

SOURCES_FILES     := $(wildcard src/*.c)
OBJECTS_FILES     := $(SOURCES_FILES:.c=.o)

all: $(SOURCES_FILES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS_FILES)
	$(CC) $^ $(LDFLAGS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	@rm -f $(OBJECTS_FILES)
	@rm -f unit_tests
	@rm -f *.gcno
	@rm -f *.gcda
	@rm -f tests/*.o

fclean: clean
	@rm -f $(EXECUTABLE)

tests_run:
	echo "run test"

re: fclean all

.PHONY: all clean fclean unit_tests tests_run re
