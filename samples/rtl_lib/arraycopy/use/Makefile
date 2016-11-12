CC = sds++ -sds-pf zc702

.PHONY: all clean ultraclean

all: rtl_arraycopy.elf

main.o: main.cpp
	${CC} -c -I../build $< -o $@

rtl_arraycopy.elf: main.o
	${CC} main.o -L../build -lrtl_arraycopy -o $@

clean:
	${RM} -rf rtl_arraycopy.elf main.o

ultraclean: clean
	${RM} -rf _sds sd_card rtl_arraycopy.elf.bit
