#!/bin/bash
# 获取依赖包列表
cat mgr.txt | awk  '{print $1" "$3" "$5}' > mgr2.txt
sed -i  's/\.x86_64//g' mgr2.txt
sed -i  's/\.noarch//g' mgr2.txt
