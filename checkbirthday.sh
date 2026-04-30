#!/usr/bin/env bash

set -euo pipefail

name="Oluwaseun"
birthday="04-30"
today="$(date +"%m-%d")"
level=0

age="${AGE:-classified}"

echo ">> Initializing birthday pipeline..."
echo "Running birthday check for $name..."
echo "Today: $(date +"%Y-%m-%d")"
echo

if [[ "$today" == "$birthday" ]]; then
  ((level += 1))

  echo "Birthday matched: true"
  echo "Level increased: $level"
  echo "Age++ triggered ✅"

  echo
  echo ">> Deploying birthday upgrade..."
  sleep 0.5
  echo "Deployment status: SUCCESS 🚀"
else
  echo "Birthday matched: false"
  echo "Level remains: $level"
fi

if [[ -n "${age+x}" ]]; then
  echo "age var exists: true"
else
  echo "age var exists: false"
fi

echo
echo "It's my birthday! 🎉"
echo "Another year of learning, growing, building, debugging, and upgrading to the next level."
echo "New year. New commits. New solutions. Same passion."