#!/bin/bash

# Define the build directory
BUILD_DIR="build"
BUILD_IOS_DIR="build-ios"

# Function to clean the build directory
clean_build_directory() {
    local dir="$1"
    if [ -d "$dir" ]; then
        echo "Cleaning up the build directory: $dir..."
        rm -rf "$dir"
    fi
}


# Function to build the project
build_mac_project() {
    clean_build_directory "$BUILD_DIR"

    mkdir "$BUILD_DIR"
    cd "$BUILD_DIR" || exit

    echo "Running CMake..."
    cmake ..

    echo "Building the project..."
    cmake --build .

    echo "Build completed."
}


# Function to build the project
build_ios_project() {
    # clean_build_directory "$BUILD_IOS_DIR"
    # mkdir "$BUILD_IOS_DIR"
    cd "$BUILD_IOS_DIR" || exit

    echo ${IPHONE_SDKVERSION}
    export CROSS_TOP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer
    export CROSS_SDK=iPhoneOS.sdk

    echo "Running CMake..."
    cmake -DTARGET_PLATFORM="iOS" -DARCHITECTURE="arm64" ..

    echo "Building the project..."
    cmake --build . -v  | tee build-ios.log

    echo "Build completed."
}

# Main script execution
build_ios_project
