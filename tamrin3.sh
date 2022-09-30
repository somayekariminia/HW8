#!/bin/bash
touch ToDo.txt
echo hello
echo "1: add 2:add hello word 3:convert word to bash"
echo "enter a choice"
read n
case $n in
1)

  for i in {0..5}; do
    touch files$i
  done
  ;;
2)
  for i in {0..5}; do
    echo >files$i "hello word"
  done
  ;;
3)
  for i in {0..5}; do
    sed -i "s/word/bash/" files$i
  done
  ;;
esac
