# Set the following before running:
# - CC = <your compiler>
# - AR = <your archiver>
CFLAGS = -I../include -I./include -DENABLE_ALL_ENGINES

SOURCES = $(wildcard *.c)
OBJFILES = $(SOURCES:.c=.o)
OUT = libnvdla.a

$(OUT): $(OBJFILES)
	$(AR) rs $@ $^

all: $(OUT)

.PHONY: clean
clean:
	rm -f $(OBJFILES) $(OUT)

