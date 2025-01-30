
CXXFLAGS=-std=c++14 -stdlib=libc++ -I../thrift-0.14.2/lib/cpp/src -c -fPIC
SRCS=LockedObject_constants.cpp LockedObject_types.cpp SignatureMetadata_constants.cpp SignatureMetadata_types.cpp
OBJS=$(SRCS:.cpp=.o)
LIB=libbayunlo.so

all: $(LIB)


$(SRCS): LockedObject.thrift SignatureMetadata.thrift
	../thrift-0.14.2/compiler/cpp/cmake-build/bin/thrift -gen cpp -out . LockedObject.thrift
	../thrift-0.14.2/compiler/cpp/cmake-build/bin/thrift -gen cpp -out . SignatureMetadata.thrift


$(LIB): $(OBJS)
	$(CXX) -shared -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $<

clean:
	rm -f *.a *.o *.cpp
