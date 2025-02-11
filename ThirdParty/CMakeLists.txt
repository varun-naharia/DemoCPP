cmake_minimum_required(VERSION 3.22)

project(SDKThirdParty)

include(ExternalProject)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_COMPILER "xcrun clang")


# Set the source and build directories
set(OPENSSL_DIR openssl-1.1.1c)
set(BOOST_DIR boost-1.86.0)
set(THRIFT_DIR thrift-0.14.2)
set(CURL_DIR curl-8.11.0)
set(THRIFT_GEN_DIR thrift-gen)
set(JSONCPP_DIR jsoncpp-master)
set(SHAMIR_DIR libshamir)
set(LEVELDB_DIR leveldb)
set(OPENTRACING_DIR opentracing-cpp-1.5.1)
set(MSGPACK_DIR msgpack-c-cpp-3.2.1)
set(BCRYPT_DIR libbcrypt)



set(OPENSSL_CONFIGURE_CMD "")
set(BOOST_INSTALL_COMMAND "")
set(THRIFT_INSTALL_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thrift)  # Change to your desired install directory
set(ZLIB_DIR zlib-1.2.11)



if(TARGET_PLATFORM STREQUAL "iOS")
    message("building for iOS")
    set(EXTERNAL_PROJECT_CMAKE_ARGS
        -DCMAKE_TOOLCHAIN_FILE='/Users/Technaharia/Downloads/ios-cmake-master/ios.toolchain.cmake'
        -DPLATFORM=OS64
        -DCMAKE_BUILD_TYPE=Release
    )
     if(ARCHITECTURE STREQUAL "arm64")
        message("building for arm64")
        set(OPENSSL_CONFIGURE_CMD "ios64-cross")

        # Define the command to install Boost
        set(BOOST_INSTALL_COMMAND
            ./b2 -j6 install 
            --prefix=<INSTALL_DIR>
            -sBOOST_BUILD_USER_CONFIG=/Users/Technaharia/Downloads/Demo/ThirdParty/boost-config.jam 
            toolset=clang-iphoneos 
            target-os=iphone 
            variant=release 
            --without-process
            binary-format=mach-o 
            abi=aapcs 
            link=static stage
            -d+2
        )

        set(EXTERNAL_PROJECT_CMAKE_ARGS
            -DCMAKE_TOOLCHAIN_FILE='/Users/Technaharia/Downloads/ios-cmake-master/ios.toolchain.cmake'
            -DPLATFORM=OS64
            -DCMAKE_BUILD_TYPE=Release
            -DCMAKE_INSTALL_PREFIX=${THIRDPARTY_INSTALL_DIR}
            -DBoost_INCLUDE_DIRS=${THIRDPARTY_INSTALL_DIR}
            -DWITH_OPENSSL=${OPENSSL_INSTALL_DIR}
            -DBUILD_SHARED_LIBS=OFF
            -DWITH_CPP=ON
            -DWITH_TESTS=OFF
            -DWITH_PYTHON=OFF
            -DWITH_JAVA=OFF
            -DWITH_PHP=OFF
            -DWITH_RUBY=OFF
            -DWITH_QT4=OFF
            -DWITH_QT=OFF
            -DWITH_SWIFT=OFF
            -DWITH_PY3=OFF
            -DWITH_NODEJS=OFF
            -DENABLE_TESTS=OFF
            -DBUILD_TESTING=OFF
            -DBUILD_TUTORIALS=OFF
            -DBUILD_JAVASCRIPT=OFF
        )

        set(EXTERNAL_PROJECT_CMAKE_ARGS_FOR_LEVELDB
            -DCMAKE_TOOLCHAIN_FILE='/Users/Technaharia/Downloads/ios-cmake-master/ios.toolchain.cmake'
            -DPLATFORM=OS64           
        )
        set(PLATFORM_NAME "iOS Device")
        set(TOOLCHAIN_FILE "/Users/Technaharia/Downloads/ios-cmake-master/ios.toolchain.cmake")
        set(PLATFORM "OS64")
        set(CMAKE_OSX_ARCHITECTURES "arm64")
    elseif(ARCHITECTURE STREQUAL "x86_64")
        set(OPENSSL_CONFIGURE_CMD "iossimulator-x86_64")
       # Define the command to install Boost
       set(BOOST_INSTALL_COMMAND
        ./b2 -j6 install 
        --prefix=<INSTALL_DIR>
        -sBOOST_BUILD_USER_CONFIG=/Users/Technaharia/Downloads/Demo/ThirdParty/boost-config.jam 
        toolset=clang-iphonesimulator 
        target-os=iphonesimulator 
        variant=release 
        --without-process
        binary-format=mach-o 
        abi=aapcs 
        link=static stage
        -d+2
       )
        set(PLATFORM_NAME "iOS Simulator")
        set(TOOLCHAIN_FILE "/Users/Technaharia/Downloads/ios-cmake-master/ios.toolchain.cmake")
        set(PLATFORM "SIMULATOR64")
        set(CMAKE_OSX_ARCHITECTURES "x86_64;arm64")
    else()
        message(FATAL_ERROR "Unsupported architecture for iOS: ${ARCHITECTURE}")
    endif()
elseif(TARGET_PLATFORM STREQUAL "macOS")
    set(EXTERNAL_PROJECT_CMAKE_ARGS)

    if(ARCHITECTURE STREQUAL "arm64")
        set(OPENSSL_CONFIGURE_CMD "darwin64-arm64-cc")

        #set install command for boost
        set(BOOST_INSTALL_COMMAND ./b2 -j6
            --prefix=<INSTALL_DIR> 
            --with-system 
            --with-filesystem 
            --with-thread install)

        set(EXTERNAL_PROJECT_CMAKE_ARGS
            -DCMAKE_BUILD_TYPE=Release
            -DCMAKE_INSTALL_PREFIX=${THIRDPARTY_INSTALL_DIR}
            -DBoost_INCLUDE_DIRS=${THIRDPARTY_INSTALL_DIR}
            -DWITH_OPENSSL=${OPENSSL_INSTALL_DIR}
            -DBUILD_SHARED_LIBS=OFF
            -DWITH_CPP=ON
            -DWITH_TESTS=OFF
            -DWITH_PYTHON=OFF
            -DWITH_JAVA=OFF
            -DWITH_PHP=OFF
            -DWITH_RUBY=OFF
            -DWITH_QT4=OFF
            -DWITH_QT=OFF
            -DWITH_SWIFT=OFF
            -DWITH_PY3=OFF
            -DWITH_NODEJS=OFF
            -DENABLE_TESTS=OFF
            -DBUILD_TESTING=OFF
            -DBUILD_TUTORIALS=OFF
            -DBUILD_JAVASCRIPT=OFF
        )
    elseif(ARCHITECTURE STREQUAL "x86_64")
        set(OPENSSL_CONFIGURE_CMD "darwin64-x86_64-cc")
        #set install command for boost
        set(BOOST_INSTALL_COMMAND
            ./b2 install
            --prefix=<INSTALL_DIR>
            -sBOOST_BUILD_USER_CONFIG=$BOOST_SRC/tools/build/example/user-config.jam 
            --stagedir=iphone-build/stage 
            --prefix=<INSTALL_DIR> 
            --toolset=darwin-${IPHONE_SDKVERSION}~iphone cxxflags="-miphoneos-version-min=$IOS_MIN_VERSION -stdlib=$STDLIB $BITCODE" variant=release linkflags="-stdlib=$STDLIB" architecture=arm target-os=iphone macosx-version=iphone-${IPHONE_SDKVERSION} define=_LITTLE_ENDIAN link=static install
        )
    else()
        message(FATAL_ERROR "Unsupported architecture for macOS: ${ARCHITECTURE}")
    endif()
elseif(TARGET_PLATFORM STREQUAL "Linux")
    set(ARCHS x86_64)
    set(EXTERNAL_PROJECT_CMAKE_ARGS
        -DCMAKE_BUILD_TYPE=Release
    )
    if(ARCHITECTURE STREQUAL "x86_64")
        set(OPENSSL_CONFIGURE_CMD "linux-x86_64")
         #set install command for boost
        set(BOOST_INSTALL_COMMAND
            ./b2 install
            --prefix=<INSTALL_DIR>
            --without-python
        )
    elseif(ARCHITECTURE STREQUAL "arm64")
        set(OPENSSL_CONFIGURE_CMD "linux-aarch64")
         #set install command for boost
        set(BOOST_INSTALL_COMMAND
            ./b2 install
            --prefix=<INSTALL_DIR>
            --without-python
        )
    else()
        message(FATAL_ERROR "Unsupported architecture for Linux: ${ARCHITECTURE}")
    endif()
elseif(TARGET_PLATFORM STREQUAL "Android")
    set(ARCHS arm64-v8a armeabi-v7a x86 x86_64)
    set(EXTERNAL_PROJECT_CMAKE_ARGS
        -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake
        -DANDROID_PLATFORM=21
        -DCMAKE_BUILD_TYPE=Release
    )
    if(ARCHITECTURE STREQUAL "arm64")
        set(OPENSSL_CONFIGURE_CMD "android-arm64")
        #set install command for boost
        set(BOOST_INSTALL_COMMAND
            ./b2 install
            --prefix=<INSTALL_DIR>
            --without-python
        )
    elseif(ARCHITECTURE STREQUAL "x86_64")
        set(OPENSSL_CONFIGURE_CMD "android-x86_64")
        #set install command for boost
        set(BOOST_INSTALL_COMMAND
            ./b2 install
            --prefix=<INSTALL_DIR>
            --without-python
        )
    else()
        message(FATAL_ERROR "Unsupported architecture for Android: ${ARCHITECTURE}")
    endif()
else()
    message(FATAL_ERROR "Unsupported TARGET_PLATFORM: ${TARGET_PLATFORM}")
endif()

set (CMAKE_OSX_DEPLOYMENT_TARGET 10.13)



ExternalProject_Add(bcrypt
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${BCRYPT_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
    BUILD_COMMAND make
    CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>)

ExternalProject_Add(msgpack
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${MSGPACK_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
        -DMSGPACK_BUILD_TESTS=OFF
    CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>)

ExternalProject_Add(leveldb
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${LEVELDB_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS_FOR_LEVELDB}
        -DHAVE_CRC32C=OFF
        -DHAVE_SNAPPY=OFF
        -DHAVE_TCMALLOC=OFF
        -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR> -DLEVELDB_BUILD_TESTS:BOOL=OFF -DLEVELDB_BUILD_BENCHMARKS:BOOL=OFF -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON
    )

# Add ExternalProject for zlib
ExternalProject_Add(zlib
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${ZLIB_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS
        -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_FILE}
        -DPLATFORM=${PLATFORM}
        -DCMAKE_BUILD_TYPE=Release
        -DCMAKE_INSTALL_PREFIX=${THIRDPARTY_INSTALL_DIR}
        -DBUILD_SHARED_LIBS=ON
        -DCMAKE_OSX_ARCHITECTURES=${CMAKE_OSX_ARCHITECTURES}
    CONFIGURE_COMMAND ${CMAKE_COMMAND} -S <SOURCE_DIR> -B <BINARY_DIR>
        -DCMAKE_BUILD_TYPE=Release
        -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_FILE}
        -DPLATFORM=${PLATFORM}
        -DCMAKE_INSTALL_PREFIX=${THIRDPARTY_INSTALL_DIR}
    BUILD_COMMAND ${CMAKE_COMMAND} --build <BINARY_DIR> --target all
    INSTALL_COMMAND ${CMAKE_COMMAND} --install <BINARY_DIR> --prefix ${THIRDPARTY_INSTALL_DIR}
)
ExternalProject_Add_Step(zlib
    fixinstallname
    COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libz.1.dylib" <INSTALL_DIR>/lib/libz.1.dylib
    COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libz.1.dylib" <INSTALL_DIR>/lib/libz.1.2.11.dylib
    DEPENDEES install)
ExternalProject_Get_Property(zlib INSTALL_DIR)
set(ZLIB_INSTALL_DIR ${INSTALL_DIR})


# Platform-specific adjustments
if(APPLE)
    ExternalProject_Add_Step(zlib
        fixinstallname
        COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libz.1.dylib" <INSTALL_DIR>/lib/libz.1.dylib
        COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libz.1.dylib" <INSTALL_DIR>/lib/libz.1.2.11.dylib
        DEPENDEES install
    )
endif()

 # Get zlib install directory
ExternalProject_Get_Property(zlib INSTALL_DIR)
set(ZLIB_INSTALL_DIR ${INSTALL_DIR})

#Add OpenSSL as an external project
ExternalProject_Add(openssl
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${OPENSSL_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
    CONFIGURE_COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/${OPENSSL_DIR}/Configure ${OPENSSL_CONFIGURE_CMD} --prefix=<INSTALL_DIR> no-asm
    BUILD_COMMAND make)
ExternalProject_Add_Step(openssl
    fixinstallname
    COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libssl.1.1.dylib" <INSTALL_DIR>/lib/libssl.1.1.dylib
    COMMAND ${CMAKE_INSTALL_NAME_TOOL} -change "<INSTALL_DIR>/lib/libcrypto.1.1.dylib" "@rpath/libcrypto.1.1.dylib" <INSTALL_DIR>/lib/libssl.1.1.dylib
    COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libcrypto.1.1.dylib" <INSTALL_DIR>/lib/libcrypto.1.1.dylib
    DEPENDEES install)

ExternalProject_Get_Property(openssl INSTALL_DIR)
set(OPENSSL_INSTALL_DIR ${INSTALL_DIR})


#External project for Boost
ExternalProject_Add(boost
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${BOOST_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    # CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND cd ${CMAKE_CURRENT_SOURCE_DIR}/${BOOST_DIR} && ${BOOST_INSTALL_COMMAND} && cd -
)
# Step to bootstrap Boost
ExternalProject_Add_Step(boost
    bootstrap
    COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/${BOOST_DIR}/bootstrap.sh --prefix=<INSTALL_DIR>
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${BOOST_DIR}
    DEPENDERS configure)

ExternalProject_Get_Property(boost INSTALL_DIR)
set(BOOST_INSTALL_DIR ${INSTALL_DIR})

set(BOOST_INCLUDE_DIR ${THIRDPARTY_INSTALL_DIR}/include)
set(BOOST_LIBRARY_DIR ${THIRDPARTY_INSTALL_DIR})



ExternalProject_Add(curl
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${CURL_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS
        -DCMAKE_TOOLCHAIN_FILE=/Users/Technaharia/Downloads/ios-cmake-master/ios.toolchain.cmake
        -DPLATFORM=OS64
        -DCMAKE_BUILD_TYPE=Release
        -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
        -DCURL_USE_OPENSSL=ON
        -DCURL_ZLIB=OFF
        -DBUILD_SHARED_LIBS=ON
        -DBUILD_CURL_EXE=OFF
        -DENABLE_ARES=OFF
        -DENABLE_MANUAL=OFF
        -DENABLE_THREADED_RESOLVER=ON
        -DCMAKE_USE_LIBSSH2=OFF
        -DCMAKE_C_FLAGS="-DHAVE_FSEEKO=1"
        -DHAVE_LIBSOCKET=OFF
        -DCURL_DISABLE_LIBIDN2=ON
        -DHAVE__FSEEKI64=OFF
        -DHAVE_FSEEKO=OFF
        -DHAVE_LIBIDN2=OFF
        -DOPENSSL_ROOT_DIR=${OPENSSL_INSTALL_DIR}
        -DOPENSSL_LIBRARIES=${OPENSSL_INSTALL_DIR}/lib
        -DUSE_NGHTTP2=OFF
        -DCURL_USE_LIBPSL=OFF
        -DCURL_USE_LIBSSH2=OFF
        -DCMAKE_EXE_LINKER_FLAGS="-framework System -framework Security -framework Foundation"

    BUILD_COMMAND ${CMAKE_COMMAND} --build <BINARY_DIR> --target all
    INSTALL_COMMAND ${CMAKE_COMMAND} --install <BINARY_DIR> --prefix <INSTALL_DIR>
)


# Platform-specific adjustments for iOS
if(APPLE)
    ExternalProject_Add_Step(curl
        fixinstallname
        COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libcurl.4.dylib" <INSTALL_DIR>/lib/libcurl.4.dylib
        DEPENDEES install
    )
endif()

# Add dependencies
add_dependencies(curl openssl zlib)


ExternalProject_Add(thrift
        SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${THRIFT_DIR}
        INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
        CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
            -DOPENSSL_ROOT_DIR=${OPENSSL_INSTALL_DIR}
            -DOPENSSL_CRYPTO_LIBRARY=${OPENSSL_INSTALL_DIR}/lib/libcrypto.a
            -DOPENSSL_SSL_LIBRARY=${OPENSSL_INSTALL_DIR}/lib/libssl.a
            -DBoost_INCLUDE_DIR=${BOOST_INCLUDE_DIR}
            -DWITH_ZLIB=${ZLIB_INSTALL_DIR}
            -DCMAKE_FIND_LIBRARY_SUFFIXES=".a"
            -DBUILD_SHARED_LIBS=ON
            -DBUILD_JAVA=OFF
            -DBUILD_JAVASCRIPT=OFF
            -DBUILD_NODEJS=OFF
            -DBUILD_PYTHON=OFF
            -DBUILD_PY3=OFF
            -DBUILD_QT=OFF
            -DBUILD_QT4=OFF
            -DBUILD_RUBY=OFF
            -DBUILD_PHP=OFF
            -DBUILD_SWIFT=OFF
            -DBUILD_TESTING=OFF
            
            BUILD_COMMAND make clean && make CFLAGS+=-DOPENSSL_NO_SSL3 CFLAGS+=-fPIC CXXFLAGS+=-DOPENSSL_NO_SSL3 CXXFLAGS+=-fPIC
        INSTALL_COMMAND make install
    )
# ExternalProject_Add_Step(thrift
#     fixinstallname
#     COMMAND ${CMAKE_INSTALL_NAME_TOOL} -id "@rpath/libthrift-0.14.2.dylib" <INSTALL_DIR>/lib/libthrift-0.14.2.dylib
#     DEPENDEES install
# )

# ExternalProject_Get_Property(thrift INSTALL_DIR)
# set(THRIFT_INSTALL_DIR ${INSTALL_DIR})

# ExternalProject_Add(thrift-gen
#     SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${THRIFT_GEN_DIR}
#     INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
#     CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
#     CMAKE_CACHE_ARGS -DTHRIFT_INSTALL_DIR:PATH=${THRIFT_INSTALL_DIR} -DBOOST_INSTALL_DIR:PATH=${BOOST_INSTALL_DIR} -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
# )
# add_dependencies(thrift-gen thrift)

ExternalProject_Add(jsoncpp-master
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${JSONCPP_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
        -DJSONCPP_WITH_TESTS=OFF
    CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR> -DBUILD_STATIC_LIBS:BOOL=ON -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON
)

ExternalProject_Add(opentracing
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${OPENTRACING_DIR}
    INSTALL_DIR ${THIRDPARTY_INSTALL_DIR}
    CMAKE_ARGS ${EXTERNAL_PROJECT_CMAKE_ARGS}
    CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR> -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON -DBUILD_TESTING:BOOL=OFF
    )