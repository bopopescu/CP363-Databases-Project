#!/usr/bin/env bash

echo "Usage: ./git-setup.sh <FirstName> <LastName> <email@some.domain.or.ip>"

git config --global user.name "${1} ${2}"
git config --global user.email "${3}"

echo "[ DEBUG ]: git setup successful!"
