# Makefile for ubiquity-slideshow-ubuntu

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_pop-os

build_init:
	mkdir -p $(BUILD)

build_ubuntu: build_init
	cp -rL $(SOURCESLIDES)/ubuntu $(BUILD)

build_pop-os: build_init
	cp -rL $(SOURCESLIDES)/pop-os $(BUILD)

build_kubuntu: build_init
	cp -rL $(SOURCESLIDES)/kubuntu $(BUILD)

build_xubuntu: build_init
	cp -rL $(SOURCESLIDES)/xubuntu $(BUILD)

build_lubuntu: build_init
	cp -rL $(SOURCESLIDES)/lubuntu $(BUILD)

build_edubuntu: build_init
	cp -rL $(SOURCESLIDES)/edubuntu $(BUILD)

translations:
	./generate-local-slides.sh ubuntu
	./generate-local-slides.sh kubuntu
	./generate-local-slides.sh xubuntu
	./generate-local-slides.sh lubuntu
	./generate-local-slides.sh edubuntu

.PHONY : clean

clean:
	-rm -rf $(BUILD)
