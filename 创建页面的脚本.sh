#!/bin/bash

# 遍历文件夹
for folder in $(ls -d */); do
    # 去掉文件夹末尾的斜杠
    folder_name=${folder%/}
    
    # 创建 page 文件夹并运行 hexo new page 命令
    echo "Creating page for $folder_name"
    hexo new page "$folder_name"
done

# 使用方法：chmod +x add_index.sh
#          ./add_index.sh  这里是脚本的名字