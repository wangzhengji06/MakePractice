TARGET=libxcom
OBJS=xcom.o
ifeq ($(STATIC),1)
# static
TARGET:=$(TARGET).a
$(TARGET):$(OBJS)
	$(AR) -cvr $@ $^
else
# dynamic
TARGET:=$(TARGET).so
LDFLAGS=-shared
CXXFLAGS=-fPIC
$(TARGET):$(OBJS)
	$(CXX) $(LDFLAGS) $^ -o $@
endif
clean:
	$(RM) $(TARGET) $(OBJS)

.PHONY: clean
