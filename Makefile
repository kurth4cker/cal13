# SPDX-License-Identifier: ISC
# SPDX-FileCopyrightText: 2026 kurth4cker

CC = cc

CFLAGS = -g -Wall -Werror -pedantic

PROGRAM = cal
SOURCES = main.c lib.c
INCLUDES = lib.h

TEST_PROGRAM = ./test
TEST_SOURCES = $(SOURCES)

TEST_CFLAGS = $(CFLAGS) -DTEST_BINARY
TEST_LDFLAGS = $(LDFLAGS)
TEST_LIBS = $(LDLIBS) -lcmocka

.PHONY: all
all: $(PROGRAM)

$(PROGRAM): $(SOURCES) $(INCLUDES)
	$(CC) -std=c99 $(CFLAGS) $(LDFLAGS) -o $@ $(SOURCES) $(LDLIBS)

.PHONY: check
check: test
	./test

$(TEST_PROGRAM): $(TEST_SOURCES)
	$(CC) -std=c99 $(TEST_CFLAGS) $(TEST_LDFLAGS) -o $@ $(TEST_SOURCES) $(TEST_LIBS)

.PHONY: clean
clean:
	rm -f *.o $(PROGRAM) $(TEST_PROGRAM)

.PHONY: run
run: $(PROGRAM)
	./$(PROGRAM)

.PHONY: tags
tags: $(SOURCES)
	ctags -R .
