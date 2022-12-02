#!/bin/bash
# 获取依赖包列表
cat mon.txt | awk  '{print $1" "$3" "$5" "$7}' > mon2.txt
sed -i  's/\.x86_64//g' mon2.txt
sed -i  's/\.noarch//g' mon2.txt
