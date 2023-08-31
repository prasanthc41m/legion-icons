all: clean build

LOCATION = /usr/share/icons/

build:
	zip Legion-icons.zip material_light_cursors/* material_cursors/*

install:
	
	cp -R material_light_cursors  $(LOCATION)
	cp -R material_cursors  $(LOCATION)
	echo 'Icons installed. Use GNOME_TWEAK to change.'

uninstall:
	rm -rf $(LOCATION)/material_light_cursors
	rm -rf $(LOCATION)/material_cursors

reinstall: uninstall install

clean:
	rm -f *.zip
