#!/bin/sh

if [ ! -x "$(command -v faketime)" ]; then
  echo "libfaketime not found - skipping $0..."
  exit 1
fi

if [ "$1" = 'actual' ]; then
  faketime '2011-02-25 23:42' "$CALCURSE" --read-only -D "$DATA_DIR" -a
elif [ "$1" = 'expected' ]; then
  cat <<EOD
02/25/11:
 * Socket ghastlier
 - ..:.. -> ..:..
	Covenants useful smoker's
EOD
else
  ./run-test "$0"
fi