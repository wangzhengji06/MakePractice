#makefile.mk
ifndef TARGET
#  /root/make/src/test_include
#  notdir
TARGET:=$(notdir $(shell pwd)) 
endif
CXXFLAGS:=-I../../include -I../test_gcc -std=c++17 #g++ -c compile
LDFLAGS:=-L../xcom -L../xthread #link
LDLIBS:=-lpthread # Link the library used for auto import
SRCS:=$(wildcard *.cpp *.cc *.c) #test_include.cpp testcpp.cc testc.c
OBJS:=$(patsubst %.cpp,%.o,$(SRCS))
OBJS:=$(patsubst %.cc,%.o,$(OBJS))
OBJS:=$(patsubst %.c,%.o,$(OBJS))
$(TARGET):$(OBJS)
	$(CXX) $^ -o $@ $(LDFLAGS) $(LDLIBS)

clean:
	$(RM) $(OBJS) $(TARGET)
.PHONY: clean
