install:
	cp ChooseBrowser.desktop ~/.local/share/applications
	xdg-settings get default-web-browser > old-browser.txt
	xdg-settings set default-web-browser ChooseBrowser.desktop

remove:
	rm ~/.local/share/applications/ChooseBrowser.desktop
	xdg-settings set default-web-browser `cat old-browser.txt`
