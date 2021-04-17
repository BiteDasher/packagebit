#!/usr/bin/env bash
if [ "$(id -u)" -ne 0 ]; then
	echo "sudo required"
	exit 1
fi
install -D -m 644 lint /usr/local/share/PackageBit/lint
install -D -m 755 pbcon /usr/bin/pbcon
for backend in *.backend; do
	install -D -m 644 $backend /usr/local/share/PackageBit/$backend
done
