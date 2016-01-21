floppy.img: bootloader
	cp bootloader/bootloader.bin floppy.img

bootloader:
	$(MAKE) -C bootloader

test: floppy.img
	qemu-system-i386 -curses -fda floppy.img
	# Reset and clear to recover from botched console, if any
	reset
	clear

clean:
	rm -rf floppy.img

cleanall: clean
	$(MAKE) clean -C bootloader

.PHONY: bootloader clean cleanall test
