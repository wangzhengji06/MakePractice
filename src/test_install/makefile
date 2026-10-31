#test_install/makefile
TARGET=test_install
OBJS=test_install.o
CC:=g++
OUT=out
#make install OUT=../out
STARTSH=start_$(TARGET)
STOPSH=stop_$(TARGET)
define Install #$(1) TARGET $(2) $(OUT) $(3) para1 $(4) para2 ...
	@echo "begin install " $(1)
	mkdir -p $(2)
	cp $(1) $(2)
	@echo "begin make start shell"
	echo "nohup $(2)/$(1) $(3) $(4) $(5) $(6) &" > $(STARTSH)
	chmod +x $(STARTSH)
	cp $(STARTSH) $(2) 
	@echo "end make startshell"
	@echo "begin make startshell"
	echo killall $(1) > $(STOPSH)
	chmod +x $(STOPSH)
	cp $(STOPSH) $(2) 
	@echo "end make startshell"
	@echo $(1) "install success"
endef
# start_test_install
# nohup test_install &


# stop_test_install
# killall test_install

$(TARGET):$(OBJS) 
install:$(TARGET)
	$(call Install,$(TARGET),$(OUT)/bin/,5)
#	@echo "begin install " $(TARGET)
#	mkdir -p $(OUT)/bin/
#	cp $(TARGET) $(OUT)/bin/
#	@echo $(TARGET) "install success"

.PHONY: install
