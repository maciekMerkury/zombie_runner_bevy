X11=WINIT_UNIX_BACKEND=x11

.PHONY = default wayland xorg build check doc_open all

default: check

clean:
	cargo clean

check:
	@cargo check


wayland: 
	cargo r

xorg: 
	$(X11) cargo r

build:
	@cargo b

doc_open:
	cargo doc
	vimb &>/dev/null target/doc/rendering/index.html &

all:
	cargo c
	cargo b
#	cargo br
	cargo doc

clean_ggez:
	rm target/debug/deps/ggez-* target/debug/deps/libggez-*

