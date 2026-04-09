# SPDX-License-Identifier: ISC
# SPDX-FileCopyrightText: 2026 kurth4cker

CC = cc

PROGRAM = cal
SOURCES = main.c

all: $(PROGRAM)

$(PROGRAM): $(SOURCES)
	$(CC) -std=c99 $(CFLAGS) $(LDFLAGS) -o $@ $(SOURCES) $(LDLIBS)

clean:
	rm -f *.o $(PROGRAM)

run: $(PROGRAM)
	./$(PROGRAM)

tags:
	ctags -R .
