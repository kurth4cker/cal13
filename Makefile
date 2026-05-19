# SPDX-License-Identifier: ISC
# SPDX-FileCopyrightText: 2026 kurth4cker

CC = cc

CFLAGS = -g -Wall -Werror -pedantic

PROGRAM = cal
SOURCES = main.c lib.c
INCLUDES = lib.h

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

test: $(SOURCES)
	$(CC) -std=c99 $(TEST_CFLAGS) $(TEST_LDFLAGS) -o $@ $(SOURCES) $(TEST_LIBS)

.PHONY: clean
clean:
	rm -f *.o $(PROGRAM)

.PHONY: run
run: $(PROGRAM)
	./$(PROGRAM)

.PHONY: tags
tags: $(SOURCES)
	ctags -R .
