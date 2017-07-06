#Pull git source
git clone https://github.com/emacs-mirror/emacs.git
cd emacs
#Prepare lib
sudo yum -y install libXpm-devel libjpeg-turbo-devel openjpeg-devel openjpeg2-devel turbojpeg-devel giflib-devel libtiff-devel gnutls-devel libxml2-devel GConf2-devel dbus-devel wxGTK-devel gtk3-devel ncurses-devel
#autotools
./autogen.sh all
#IF you want to install with gtk lib, you should install gnome desktop or install gnome 
#rpm -q gtk3-devel, at the most basic level.
#But, installing that is not necessarily going to pull in everything you need. You can short-cut this by installing the GNOME Software #Development group. (Even if you are not doing GNOME development, this happens to be a group which contains gtk3-devel and #many related packages.)
#Do this:
#sudo yum groupinstall gnome-software-development
#And, actually, you'll probably want to make sure X Software Development is there too, as well as all of the basic C development #tools. So:
#sudo yum groupinstall gnome-software-development x-software-development c-development-tools texi2html texinfo
#If no gettting error 
#makeinfo: command not found
#checking for libXaw... configure: error: No X toolkit could be found.
#If you are sure you want Emacs compiled without an X toolkit, pass
#  --with-x-toolkit=no
#to configure.  Otherwise, install the development libraries for the toolkit
#that you want to use (e.g. Gtk+) and re-run configure.
#Otherwise use option ./configure --without-makeinfo --with-x-toolkit=no
./configure --without-makeinfo --with-x-toolkit=no  --without-pop
#make it
make
make install
