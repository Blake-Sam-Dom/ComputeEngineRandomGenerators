#!/bin/bash
echo "Python duplicate numbers:"
touch ./pyt.txt
for i in {0..1000..1}
  do
    curl 127.0.0.1/python/ >> ./pyt.txt
  done
sort pyt.txt | uniq -cd
rm ./pyt.txt
echo "Java duplicate numbers:"
touch ./java.txt
for i in {0..1000..1}
  do
    curl 127.0.0.1/java/RandGen.shtml >> ./java.txt
  done
sort java.txt | uniq -cd
rm ./java.txt
