#!/bin/bash

if [ $1 == 'create'  ];then
  echo "工程文件不存在,开始创建工程"
  mkdir -p  `pwd`/src/main
  mkdir -p  `pwd`/src/test
  mkdir -p  `pwd`/target/class
  echo "工程创建完成"

  cat  > `pwd`/src/main/App.cpp << EOF
#include <iostream>

int main(){
    using namespace std;
    cout << "Hello World " << endl;
    return 0;
}    
EOF
else
  echo "...."
fi


echo "开始编译...";

if [ ! -d `pwd`/target/class  ];then
  echo "target文件夹不存在 创建文件夹..."
  mkdir -p  `pwd`/target/class
else
  echo "...."
fi

g++ `pwd`/src/main/*.cpp -o `pwd`/target/class/a.out

echo "编译结束...";

`pwd`/target/class/a.out
