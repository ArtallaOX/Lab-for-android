# MAPT Course Setup

cd
mkdir repo
cd ~/repo
git clone https://github.com/Dewalt-arch/pimpmykali
cd pimpmykali
sudo ./pimpmykali.sh
# Select Option A for MAPT course tools

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

sudo apt install adb default-jdk jadx jarsigner

# Apktool
# make sure to get the latest apktool_*.jar link for the following wget
sudo wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.2.jar -O /usr/local/bin/apktool.jar
sudo wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool
sudo chmod +x /usr/local/bin/apktool*

#Path-apk
cd ~/repo
git clone https://github.com/NickstaDB/patch-apk.git

# Android Studio #
sudo dpkg --add-architecture i386

sudo apt update && sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

sudo wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.1.1.26/android-studio-2023.1.1.26-linux.tar.gz -O /tmp/android-studio.tar.gz

sudo tar xvfz /tmp/android-studio.tar.gz -C /opt
sudo chmod +x /opt/android-studio/bin/*.sh
sudo rm -f /tmp/android-studio.tar.gz

## Run with:
cd /opt/android-studio/bin
./studio.sh
## Proceed with the Setup Wizard selecting all the available components to install
## Open a New project and go to Tools > Create Command-line Launcher & Create Desktop Entry

# Genymotion #
sudo apt install -y adb virtualbox virtualbox-dkms virtualbox-ext-pack
sudo wget https://dl.genymotion.com/releases/genymotion-3.6.0/genymotion-3.6.0-linux_x64.bin -O /tmp/genymotion.bin

sudo chmod +x genymotion.bin
sudo ./genymotion.bin

cd /opt/genymobile/genymotion
./genymotion