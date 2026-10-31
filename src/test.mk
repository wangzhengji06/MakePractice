#test.mk
LDIR=$(shell pwd)
LSS=$(shell ls)
TMP=$(shell echo 111>222)
OUT:=out
INIT=$(shell if [ ! -d $(OUT) ]; then mkdir $(OUT); fi;)
test:
	@-echo $(INIT)
	@echo $(LDIR)
	@echo $(LSS)
	@echo $(TMm)
