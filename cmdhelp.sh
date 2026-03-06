#!/bin/bash
set -e

if [[ "$1" == "" ]]; then
	help
	echo
	echo "(No input was received! Please type \`cmdhelp [command-name]\` for help.)"
	exit 0
fi

if man "$1" 2> /dev/null; then
	exit 0
fi

if help "$1" 2> /dev/null; then
	exit 0
fi

if "$1" --help 2> /dev/null; then
	exit 0
fi

echo "No help for '$1' command could be found :("
echo "(Try looking up to command name on the internet!)"
exit 1