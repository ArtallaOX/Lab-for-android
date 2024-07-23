# my script with additional tools

local packages=(
        # Add software here
        aapt adb android-sdk-platform-tools apksigner apktool apt-transport-https aptitude bettercap 
        btop burpsuite cifs-utils coreutils curl dbeaver duf exa flameshot firefox-esr flatpak fonts-firacode
        fonts-noto-color-emoji htop ideviceinstaller imagemagick jadx kate
        keepassxc libimobiledevice-utils libimobiledevice6 libusbmuxd-tools locate lolcat net-tools
        npm openssl python3 python3-pip python3-venv pipx pidcat qpdfview sqlite3 sqlitebrowser
        sshpass terminator tree ugrep virt-manager vlc wget wkhtmltopdf zaproxy zipalign
    )
sudo apt update && sudo apt install -y -o Debug::pkgProblemResolver=yes "${packages[@]}"


# Use scrcpy (screen copy) to mirror Android devices connected via USB or LAN.

# Scrcopy
cd /opt
sudo apt install -y ffmpeg libsdl2-2.0-0 adb wget \
	gcc git pkg-config meson ninja-build libsdl2-dev \
	libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
	libswresample-dev libusb-1.0-0 libusb-1.0-0-dev
sudo git clone https://github.com/Genymobile/scrcpy
cd scrcpy
sudo ./install_release.sh

## Usage
# scrcpy
# scrcpy --no-audio
# scrcpy --no-audio --record=file.mkv