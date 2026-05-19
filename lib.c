// SPDX-License-Identifier: ISC
// SPDX-FileCopyrightText: 2026 kurth4cker

#include <time.h>
#include <stdint.h>

#include "lib.h"

static const uint32_t SECONDS_OF_DAY = 60 * 60 * 24;

struct cal13_time cal13_from_unix(time_t seconds) {
	Cal13_Year year = seconds / (SECONDS_OF_DAY * 365);

	struct cal13_time ctm = {
		.year = year,
	};
	return ctm;
}
