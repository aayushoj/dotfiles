###### Install apt-fast #########
sudo add-apt-repository ppa:apt-fast/stable
sudo apt update
sudo apt install apt-fast
###### Text-Editor and IDEs #####
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF

sudo apt-fast update
###### Text Editors
TEXT_EDITORS=" gedit vim neovim python-dev python-pip python3-dev python3-pip code git "

###### development tools
DEV_TOOLS="build-essential python-dev git tig nodejs-legacy npm gnome-tweak-tool openjdk-8-jdk"

### Python packages
PY_PACKAGES="python-pip python-virtualenv python-numpy python-matplotlib"
PY3_PACKAGES= "python3-pip python3-virtualenv python3-numpy python3-matplotlib"

### Compiler Design
COMPILER="flex bison"

##### Networking tools  ########
NET_TOOLS="libpcap-dev libnet1-dev rpcbind openssh-server"

#### android tools #####
# ANDROID_TOOLS="android-tools-adb android-tools-fastboot"

##### media tools #######
MEDIA_TOOLS="flashplugin-installer vlc buka gimp evince"

##### Security tools
SECURITY_TOOLS="nmap curl"

##### Web Development
WEB_DEV="apache2 apache2-utils libapache2-mod-php php php-mcrypt php-mysql php-mbstring php-dom"

#### C/C++ advance tools
C_TOOLS="autoconf automake"

sudo apt-fast install $TEXT_EDITORS $DEV_TOOLS $PY_PACKAGES $PY3_PACKAGES $COMPILER $NET_TOOLS $MEDIA_TOOLS $SECURITY_TOOLS $WEB_DEV $C_TOOLS

## Database
sudo apt-fast install mongodb
sudo apt-fast install libsqlite3-dev
sudo apt-fast install mysql-server libmysqlclient-dev

##### Customize 
#### Install zsh
sudo apt-fast install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`

#### Install Anaconda for Python
cd /tmp
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
cd ~

#### Kali Linux Toolkit 
# git clone https://github.com/LionSec/katoolin.git ~/build/katoolin && sudo cp ~/build/katoolin/katoolin.py /usr/bin/katoolin 
# sudo chmod +x /usr/bin/katoolin
# sudo katoolin  

### pip packages
sudo pip install django flask django-widget-tweaks django-ckeditor beautifulsoup4 requests classifier SymPy ipython
sudo pip3 install django flask django-widget-tweaks django-ckeditor beautifulsoup4 requests classifier SymPy ipython

### parallel processing
mkdir ~/build
cd ~/build
sudo apt-fast install libibnetdisc-dev
wget https://www.open-mpi.org/software/ompi/v1.10/downloads/openmpi-1.10.2.tar.gz
tar -xzvf openmpi-1.10.2.tar.gz
cd openmpi-1.10.2
./configure --prefix="/home/aayushoj/build/.openmpi"
make -j2
sudo make install
export PATH="$PATH:$HOME/build/.openmpi/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/build/.openmpi/lib/"
cd ~


###### Image processing OpenCV  #####
### FAILED  ###
# cd ~/build
# git clone https://github.com/Itseez/opencv.git
# git clone https://github.com/Itseez/opencv_contrib.git
# sudo apt-fast install cmake pkg-config libjpeg8-dev libtiff-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev gfortran libopencv-dev build-essential checkinstall cmake pkg-config yasm libtiff5-dev libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils ffmpeg libgphoto2-dev
# cd opencv
# mkdir build
# cd build
# cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..

# make -j2
# sudo make install
# sudo ldconfig
# cd ~



### Ruby Install
### FAILED
# sudo apt-fast install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

# export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims"
# eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# rbenv install 2.3.0
# rbenv global 2.3.0

# sudo gem install bundler
# sudo gem install jekyll mysql2 rails jekyll-pagedown

