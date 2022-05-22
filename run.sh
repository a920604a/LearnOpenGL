#! /bin/zsh

# cmake -B ./build/ && make --directory=build -j16 && ./bin/hello


if [ -d "./build" ]; then
    # 目錄 /path/to/dir 存在
    echo "Directory ./build exists."
    rm -rf ./build
else
    # 目錄 /path/to/dir 不存在
    echo "Directory ./build does not exists."
fi

if [ -d "./lib" ]; then
    # 目錄 /path/to/dir 存在
    echo "Directory ./lib exists."
    rm -rf ./lib
else
    # 目錄 /path/to/dir 不存在
    echo "Directory ./lib does not exists."
fi

cmake -B ./build/ && make --directory=build -j16 && ./bin/hello
