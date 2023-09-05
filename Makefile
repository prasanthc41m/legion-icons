all: clean build

LOCATION = /usr/share/icons/

build:
	tar material-light-cursors.tar.gz material-cursors.tar.gz

install:
	tar xvzf  material-light-cursors.tar.gz
	tar xvzf  material-cursors.tar.gz
	cp -R material_light_cursors  $(LOCATION)
	cp -R material_cursors  $(LOCATION)
	sleep 5
	gsettings set  org.gnome.desktop.interface cursor-theme material_light_cursors
	echo 'Icons installed.'

uninstall:
	rm -rf $(LOCATION)/material_light_cursors
	rm -rf $(LOCATION)/material_cursors

reinstall: uninstall install

clean:
	rm -f *.tar
