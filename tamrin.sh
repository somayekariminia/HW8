#!/bin/bash
echo hello wellcome
echo " 1: addToDo  2: addToDont  3: DeleteToDontandaddToDo  4: DeleteToDoaddToDont "
echo " 5:viewToDo   6: viewDeletedTask   7: searchfiletodo   8: searchfiletodont "
echo " 9: searchfiledelet    10:viewfileToDont"
echo "enter your choice"
read n
case $n in
1)
  touch ToDo.txt
  echo "enter count new work"
  read n
  for ((i = 1; i <= $n; i++)); do
    echo "new work"
    read n1
    echo >>ToDo.txt $n1
  done
  ;;
2)
  touch ToDont.txt
  echo "enter count dont work"
  read n
  for ((i = 1; i <= $n; i++)); do
    echo "enter dont work"
    read n2
    echo >>ToDont.txt $n2
  done
  ;;
3)
  cat ToDont.txt >>ToDo.txt
  sed -i "d" ToDont.txt
  cat ToDont.txt
  ;;
4)
  touch DeletedTask.txt
  cat -n ToDo.txt
  echo "enter work want delete"
  read n2
  sed -i "/$n2/d" ToDo.txt
  echo >>DeletedTask.txt $n2
  ;;
5)
  cat ToDo.txt
  ;;
6)
  cat DeletedTask.txt
  ;;
7)
  echo "find work* in file ToDo.txt"
  grep work* ToDo.txt
  ;;
8)
  echo "find do* in file ToDont.txt "
  grep do* ToDont.txt
  ;;
9)
  echo "find count work* in file DeletedTask.txt"
  grep -c work* DeletedTask.txt
  ;;
10)
  cat ToDont.txt
  ;;
esac
