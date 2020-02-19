#!/usr/bin/env bash

set -euxo pipefail

cd "$(dirname "$(realpath "$0")")"

flutter build web

if [ "${1-gh-pages}" = "gh-pages" ]
then 
    npx git-directory-deploy --directory build/web
elif [ "${1}" = "surge" ]
then
    npx surge build/web/ price-search.surge.sh
else
    echo "Invalid destination, must be 'gh-pages' or 'surge'" >&2
fi
