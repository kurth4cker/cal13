// SPDX-License-Identifier: ISC
// SPDX-FileCopyrightText: 2026 kurth4cker

typedef int32_t Cal13_Year;
typedef uint16_t Cal13_Second_Of_Day;
typedef uint16_t Cal13_Day_Of_Year;

struct cal13_time {
	int32_t year;
	uint16_t day;
	uint16_t second;
};

struct cal13_time cal13_from_unix(time_t seconds);
