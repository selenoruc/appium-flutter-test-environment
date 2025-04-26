#!/bin/bash

# Detect OS
OS="$(uname -s)"
echo "Detected OS: $OS"

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Platform-specific package manager setup
install_package() {
  local pkg="$1"
  if [[ "$OS" == "Darwin" ]]; then
    brew install "$pkg"
  elif [[ "$OS" == "Linux" ]]; then
    if command_exists apt; then
      sudo apt update && sudo apt install -y "$pkg"
    elif command_exists dnf; then
      sudo dnf install -y "$pkg"
    elif command_exists yum; then
      sudo yum install -y "$pkg"
    fi
  elif [[ "$OS" == "MINGW"* || "$OS" == "CYGWIN"* || "$OS" == "MSYS"* ]]; then
    if command_exists choco; then
      choco install "$pkg" -y
    else
      echo "Please install $pkg manually or install Chocolatey from https://chocolatey.org/"
    fi
  fi
}

# Install Homebrew (macOS only)
if [[ "$OS" == "Darwin" ]] && ! command_exists brew; then
  echo "Homebrew is not installed. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Node.js
if ! command_exists node; then
  echo "Node.js is not installed. Installing..."
  install_package nodejs
fi

# Python3
if ! command_exists python3; then
  echo "Python3 is not installed. Installing..."
  install_package python3
fi

# Pip
if ! command_exists pip3; then
  echo "pip3 is not installed. Installing..."
  install_package python3-pip
fi

# Java
if ! command_exists java; then
  echo "Java is not installed. Installing..."
  install_package openjdk-11-jdk
fi

# Add JAVA_HOME for macOS/Linux
if [[ "$OS" == "Darwin" || "$OS" == "Linux" ]]; then
  JAVA_PATH=$(dirname $(dirname $(readlink -f $(which java))))
  echo "export JAVA_HOME=$JAVA_PATH" >> ~/.bashrc
  echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc
  source ~/.bashrc
fi

# Appium + Python client
if ! command_exists appium; then
  echo "Installing Appium and Appium-Python-Client..."
  npm install -g appium
  pip3 install Appium-Python-Client
fi

# Android Debug Bridge (ADB)
if ! command_exists adb; then
  echo "Installing Android Debug Bridge (ADB)..."
  install_package android-tools-adb
fi

# Android SDK (manual for Windows)
if [[ "$OS" == "Darwin" ]]; then
  brew install --cask android-sdk
elif [[ "$OS" == "Linux" ]]; then
  echo "You may need to download the Android SDK manually or via Android Studio."
elif [[ "$OS" == "MINGW"* || "$OS" == "CYGWIN"* ]]; then
  echo "Please install Android Studio and SDK manually: https://developer.android.com/studio"
fi

# Ask to install Android Studio
echo "Install Android Studio? (y/n)"
read answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
  if [[ "$OS" == "Darwin" ]]; then
    brew install --cask android-studio
  else
    echo "Please download and install Android Studio from https://developer.android.com/studio"
  fi
fi

# Set ANDROID_HOME path (macOS/Linux only)
if [[ "$OS" == "Darwin" || "$OS" == "Linux" ]]; then
  echo "Setting ANDROID_HOME environment variables..."
  ANDROID_HOME="$HOME/Android/Sdk"
  mkdir -p "$ANDROID_HOME"
  echo "export ANDROID_HOME=$ANDROID_HOME" >> ~/.bashrc
  echo 'export PATH=$PATH:$ANDROID_HOME/emulator' >> ~/.bashrc
  echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
  echo 'export PATH=$PATH:$ANDROID_HOME/tools/bin' >> ~/.bashrc
  echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc
  source ~/.bashrc
fi

# Appium Flutter driver
if ! npm list -g | grep appium-flutter-driver >/dev/null; then
  npm install -g appium-flutter-driver
fi

# Set PYTHONPATH
echo 'export PYTHONPATH=$PWD/library' >> ~/.bashrc
source ~/.bashrc

# Install Appium drivers
appium driver install --source=npm appium-flutter-driver
appium driver install --source=npm appium-uiautomator2-driver
appium driver list

echo "✅ Setup completed successfully."
echo "
###########################################
Installation is completed.
You need an extra terminal to run Appium Server.
You can run the command below to run the Appium Server:

> appium server -p 4723 -a 127.0.0.1 -pa /wd/hub --allow-cors

Start a simulator/emulator or connect real device. Then you can check the app with Appium Inspector.
Place the ios and android application files to vitual device.

- Android: app-debug.apk
- IOS: app-debug.app

Then you can check the app with Appium Inspector.
###########################################
"