export LC_ALL=C.UTF-8

set -x
set -e

if [[ -z "$CLEANUP" ]]; then
	function cleanup {
		/tmp/apt-cleanup.sh
	}
	trap cleanup EXIT

	export CLEANUP=1
fi
