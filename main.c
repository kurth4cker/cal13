// SPDX-License-Identifier: ISC
// SPDX-FileCopyrightText: 2026 kurth4cker

#include <stdio.h>
#include <stdint.h>
#include <time.h>

int main(void) {
	time_t now = time(NULL);
	fprintf(stdout, "now: %jd", (intmax_t)now);
}
