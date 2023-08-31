all: clean build

LOCATION = /usr/share/icons/

build:
	zip Legion-icons.zip material_light_cursors/* material_cursors/*

install:
	
	cp -R material_light_cursors  $(LOCATION)
	cp -R material_cursors  $(LOCATION)
	gsettings set  org.gnome.desktop.interface cursor-theme material_light_cursors
	echo 'Icons installed.'

uninstall:
	rm -rf $(LOCATION)/material_light_cursors
	rm -rf $(LOCATION)/material_cursors

reinstall: uninstall install

clean:
	rm -f *.zip
