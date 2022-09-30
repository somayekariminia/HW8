#!/bin/bash
echo hello
echo "\n 1:addfileNewTask/n 2:viewFileDontTAsk \n 3:addFileDontTAsktoviewFileDoTAsk\n 4:viewFileDoTAskile \n"
echo "enter a choice"
read n
case $n in
1)
  touch ToDo.txt
echo "enter count new works"
read i
  for i in {1..$i} ; do
     echo "new work"
      read n
      echo>>ToDo.txt $n
  done
  ;;
2)
   touch DoNot.txt
   echo "enter count DoNot"
   re
    for i in {1..$i} ; do
       echo "dont do"
        read n1
        echo  >>DontTask.txt $n1
    done
  ;;
3)
  cat DoNot.txt >>DoTo.txt
  sed "d" DoNot.txt
  cat DoNot.txt
  ;;
4)
  cat -n FileDoTAsk.txt
  echo "enter introduction line"
  read n2
  sed -i "/$n2/d" FileDoTAsk.txt
  echo >>deletedTask.txt $n2
  ;;
5)
  cat deletedTask.txt
  ;;
6)
  sed
  ;;
esac
