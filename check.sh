#!/bin/bash
for file in `git status -s | awk '{print $2}' | grep '\.lua'`;
do
    sh 3rd/lua-checker/CHECK_LUA.sh ${file}
done

#for file in `find $PWD -name '*.lua' | xargs ls -d`
#do
#  #echo ${file}
#  sh 3rd/lua-checker/CHECK_LUA.sh ${file}
#done
