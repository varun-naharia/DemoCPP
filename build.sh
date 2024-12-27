#!/bin/bash

# Define the build directories
BUILD_DIR="build"
BUILD_IOS_DIR="build-ios"
BUILD_LINUX_DIR="build-linux"
BUILD_ANDROID_DIR="build-android"

# Function to clean the build directory
clean_build_directory() {
    local dir="$1"
    if [ -d "$dir" ]; then
        echo "Cleaning up the build directory: $dir..."
        rm -rf "$dir"
    fi
}

# Function to build for macOS
build_mac_project() {
    echo "Building for macOS..."
    clean_build_directory "$BUILD_DIR"
    mkdir "$BUILD_DIR"
    cd "$BUILD_DIR" || exit
    echo "Running CMake for macOS..."
    cmake -DTARGET_PLATFORM=macOS  ..
    echo "Building the macOS project..."
    cmake --build .
    echo "macOS build completed."
}

# Function to build for iOS
build_ios_project() {
    echo "Building for iOS..."
    clean_build_directory "$BUILD_IOS_DIR"
    mkdir "$BUILD_IOS_DIR"
    cd "$BUILD_IOS_DIR" || exit
    echo "Setting iOS environment variables..."
    export CROSS_TOP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer
    export CROSS_SDK=iPhoneOS.sdk
    echo "Running CMake for iOS..."
    cmake -G "Unix Makefiles" \
        -DCMAKE_TOOLCHAIN_FILE='/Users/varun/Downloads/ios-cmake-master/ios.toolchain.cmake' \
        -DPLATFORM=OS64 \
        -DTARGET_PLATFORM=iOS \
        -DARCHITECTURE=arm64 ..
        
    echo "Building the iOS project..."
    cmake --build .  | tee build-ios.log
    echo "iOS build completed."
}

# Function to build for Linux
build_linux_project() {
    echo "Building for Linux..."
    clean_build_directory "$BUILD_LINUX_DIR"
    mkdir "$BUILD_LINUX_DIR"
    cd "$BUILD_LINUX_DIR" || exit
    echo "Running CMake for Linux..."
    cmake ..
    echo "Building the Linux project..."
    cmake --build .
    echo "Linux build completed."
}

# Function to build for Android
build_android_project() {
    echo "Building for Android..."
    clean_build_directory "$BUILD_ANDROID_DIR"
    mkdir "$BUILD_ANDROID_DIR"
    cd "$BUILD_ANDROID_DIR" || exit
    echo "Running CMake for Android..."
    cmake -DCMAKE_TOOLCHAIN_FILE="$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin" \
          -DANDROID_ABI=arm64-v8a \
          -DANDROID_PLATFORM=android-21 ..
    echo "Building the Android project..."
    cmake --build .
    echo "Android build completed."
}

# Main script execution
case "$1" in
    mac)
        build_mac_project
        ;;
    ios)
        build_ios_project
        ;;
    linux)
        build_linux_project
        ;;
    android)
        build_android_project
        ;;
    *)
        echo "Usage: $0 {mac|ios|linux|android}"
        exit 1
        ;;
esac
