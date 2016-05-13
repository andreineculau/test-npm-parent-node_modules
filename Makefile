all:
	npm install
	(cd sub && npm install)
	[ -d sub/node_modules/async ] && echo >&2 "Sub-package should use parent async"
	[ -d sub/node_modules/lodash ] && echo >&2 "Sub-package should use parent lodash"
	[ -d sub/node_modules/request ] && echo >&2 "Sub-package should use parent request"

clean:
	git clean -xdf
