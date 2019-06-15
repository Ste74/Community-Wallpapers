#!/usr/bin/make -f

THEME      =    Juhraya
DTHEME     =	wallpapers-juhraya
PREFIX     = 	/usr
DPATH 	   =	$(DESTDIR)$(PREFIX)/share/backgrounds/$(DTHEME)
DXMLGNOME  =    $(DESTDIR)$(PREFIX)/share/gnome-background-properties
DXMLMATE   =    $(DESTDIR)$(PREFIX)/share/mate-background-properties
DEL 	   =  	rm -Rf
INSTD 	   =	install -Dm644 -t
	
install:
	./backgrounds-xml.sh
	mkdir -p $(DXMLGNOME)
	cp -f $(THEME).xml $(DXMLGNOME)
	mkdir -p $(DXMLMATE)
	cp -f $(THEME).xml $(DXMLMATE)
	$(INSTD) $(DPATH) *.jpg 
	$(INSTD) $(DPATH) *.png
	
uninstall:
	$(DEL) $(DPATH)
	rm -f $(DXMLGNOME)/$(THEME).xml
	rm -f $(DXMLMATE)/$(THEME).xml
 
