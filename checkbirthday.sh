#!/usr/bin/env bash

# birthday.sh
# IT-themed birthday status script.
# Purpose: check if today is April 30, increment level, trigger Age++,
# and print a short birthday status without revealing the real age.

set -euo pipefail

name="Oluwaseun"
birthday="04-30"
today="$(date +"%m-%d")"
level=0

# Keep actual age private. This proves the variable exists without printing it.
age="${AGE:-classified}"

echo "Running birthday check for $name..."
echo "Today: $(date +"%Y-%m-%d")"
echo

if [[ "$today" == "$birthday" ]]; then
  ((level += 1))

  echo "Birthday matched: true"
  echo "Level increased: $level"
  echo "Age++ triggered ✅"
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