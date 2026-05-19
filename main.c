// SPDX-License-Identifier: ISC
// SPDX-FileCopyrightText: 2026 kurth4cker

#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <assert.h>

#include "lib.h"

#ifndef TEST_BINARY
int main(void) {
}
#else
#include <stdarg.h>
#include <setjmp.h>
#include <cmocka.h>

static void test_is_year_2026(void **state) {
	time_t seconds = 1779193246;
	struct cal13_time ctm = cal13_from_unix(seconds);
	assert_int_equal(ctm.year, 2026);
}

int main(void) {
	const struct CMUnitTest tests[] = {
		cmocka_unit_test(test_is_year_2026),
	};

	return cmocka_run_group_tests(tests, NULL, NULL);
}
#endif
