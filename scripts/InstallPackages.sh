###### Install apt-fast #########
sudo add-apt-repository ppa:apt-fast/stable
sudo apt update
sudo apt install apt-fast
###### Text-Editor and IDEs #####
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt-fast update
sudo apt-fast install gedit vim neovim subllime-text-installer python-dev python-pip python3-dev python3-pip code git
 
###### development tools
sudo apt-fast install build-essential python-dev git nodejs-legacy npm gnome-tweak-tool openjdk-8-jdk

### Python packages
sudo apt-fast install python-pip python-virtualenv python-numpy python-matplotlib
sudo apt-fast install python3-pip python3-virtualenv python3-numpy python3-matplotlib
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
#### Compiler Design  ##########
sudo apt-fast install flex bison

##### Networking tools  ########
sudo apt-fast install libpcap-dev libnet1-dev rpcbind openssh-server

###### Image processing OpenCV  #####
### FAILED  ###
cd ~/build
git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git
sudo apt-fast install cmake pkg-config libjpeg8-dev libtiff-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libatlas-base-dev gfortran libopencv-dev build-essential checkinstall cmake pkg-config yasm libtiff5-dev libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils ffmpeg libgphoto2-dev
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..

make -j2
sudo make install
sudo ldconfig
cd ~

#### android tools #####
sudo apt-fast install android-tools-adb android-tools-fastboot

##### media tools #######

sudo apt-fast install flashplugin-installer vlc buka gimp evince

##### Security tools
sudo apt-fast install nmap curl

##### Customize 
#### Install zsh
sudo apt-fast install zsh

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

chsh -s `which zsh`

##### Web Development
sudo apt-fast install apache2 apache2-utils libapache2-mod-php
sudo apt-fast install php php-mcrypt php-mysql php-mbstring php-dom

#### Install Anaconda for Python
cd /tmp
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
cd ~

## Database
sudo apt-fast install mongodb
sudo apt-fast install libsqlite3-dev
sudo apt-fast install mysql-server libmysqlclient-dev

#### Skype
sudo apt-fast install skypeforlinux

#### Kali Linux Toolkit 
git clone https://github.com/LionSec/katoolin.git ~/build/katoolin && sudo cp ~/build/katoolin/katoolin.py /usr/bin/katoolin 
sudo chmod +x /usr/bin/katoolin
sudo katoolin  

#### C/C++ advance tools
sudo apt-fast install autoconf automake

#### Ruby Install
#### FAILED
sudo apt-fast install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

rbenv install 2.3.0
rbenv global 2.3.0

sudo gem install bundler
sudo gem install jekyll mysql2 rails jekyll-pagedown

