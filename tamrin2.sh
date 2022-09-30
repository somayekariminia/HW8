#!/bin/bash
echo "Enter count times deepwork "
read n
for ((i = 1; i <= $n; i++)); do
  sleep 10
  echo "deepwork 10s"
  if [ $((i % 4)) == 0 ]; then
    sleep 5
    echo "relax 5s"
  else
    sleep 3
    echo "relax 3s"
  fi
done
