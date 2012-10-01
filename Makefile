DIRS := protobufs

.PHONY: all clean $(DIRS)

all: $(DIRS)

protobufs:
	cd protobufs && $(MAKE) $(MFLAGS)

clean:
	-@for d in $(DIRS); do (cd $$d && $(MAKE) clean); done
