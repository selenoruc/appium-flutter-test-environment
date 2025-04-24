# Appium Test Automation Setup for Flutter Applications
In this repository, the aim is to share the knowledge by experience and help you to prepare your Appium test environment for mobile app inspection and test automations.
<br><br>
The detailed steps, key notes and solutions will be shared under the /docs folder.

## Requirements
In this study, Python language is preferred to prepare test scenaios and maintain all the automation results. So, here are the requirements(We will share a setup.sh to install all of them quicker :) )

- Python
- Node.js
- Android Studio
- Java
- Appium Server
- Appium Flutter Driver
- Code Editor(VS Code preferred)

## Installation
### 1. Python (Required for Appium and Automation Scripting)

Python is essential for running Appium's automation scripts and also required by Appium drivers.

  - **macOS**:

    Python is typically pre-installed on macOS. You can check by running:
      ```bash
      python3 --version
      ```
    If needed, install via Homebrew:
      ```bash
      brew install python3
      ```
    
  - **Windows**:
    
    Download Python from the [official website](https://www.python.org/downloads/). Ensure to check the box to **Add Python to PATH** during installation.

  - **Linux**:
    
    On most distributions, you can install Python using apt:
      ```bash
      sudo apt update
      sudo apt install python3
      ```
    Verify by running:
      ```bash
      python3 --version
      ```

### 2. Node.js (Required for Appium)

Node.js is necessary to run the Appium server, which is built on top of Node.js. You need both **Node.js** and **npm** (Node Package Manager).

  - **macOS**:
    
    Install using Homebrew:
      ```bash
      brew install node
      ```
    Or download from [Node.js official website](https://nodejs.org/en/download/). To install the Brew for Node.js [(Brew Installation)](https://docs.brew.sh/Installation):
      ```bash
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      ```


  - **Windows**:

    Download from [Node.js official website](https://nodejs.org/en/download/). Run the installer and follow the instructions.

  - **Linux**:
    
    Install via apt:
      ```bash
      sudo apt update
      sudo apt install nodejs npm
      ```
  
  **Verify Installation**:
  ```bash
  node -v
  npm -v
  ```

### 3. Android Studio (Required for Android Emulators and SDK)
Android Studio is necessary for running Android emulators and managing the Android SDK.

  - **macOS**:
    
    Download from the Android Studio [website](https://developer.android.com/studio/install). Install the .dmg file and follow the installation process.

  - **Windows**:

    Download the installer from the Android Studio [website](https://developer.android.com/studio/install). Run the installer and follow the prompts to set up the Android SDK.

  - **Linux**:
    
    Install Android Studio by downloading it from the Android Studio [website](https://developer.android.com/studio/install). Alternatively, install via the package manager:

      ```bash
      sudo apt install android-studio
      ```
  
  **Verify Installation**:
  ```bash
  sdkmanager --list
  ```

### 4. Java (Required for Android Testing)

Java is needed to run Android-based tests and for Appium to interact with the Android Emulator.

  - **macOS**:

    Download Java from the official [website](https://www.java.com/en/download/manual.jsp). Or install using Homebrew:
      ```bash
      brew install openjdk@8
      ```

  - **Windows**:

    Download Java from Oracle JDK or AdoptOpenJDK [(website)](https://www.java.com/en/download/manual.jsp). Set the `JAVA_HOME` environment variable and update the `Path` variable in system settings.

  - **Linux**:
    
    Download Java from the official [website](https://www.java.com/en/download/manual.jsp). Or install via apt:
      ```bash
      sudo apt update
      sudo apt install openjdk-8-jdk
      ```
    
    Set JAVA_HOME (common across all OS) by adding the following to .bash_profile, .zshrc, or .bashrc:
      ```bash
      #paths depends on where Java is installed 
      export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) #macOS
      export JAVA_HOME='C:/Program Files/Java' #Windows
      export JAVA_HOME=/usr/bin/java #Linux
      export ANDROID_HOME=/Users/<username>/Library/Android/sdk
      export PATH=$JAVA_HOME/bin:$PATH
      export PATH=$PATH:$ANDROID_HOME/platform-tools
      export PATH=$PATH:$ANDROID_HOME/tools
      export PATH=$PATH:$ANDROID_HOME/tools/bin
      export PATH=$PATH:$ANDROID_HOME/emulator
      ```
  
  **Verify Installation**:
  ```bash
  java -version
  ```

### 5. Appium Server (Core for Automation)

Appium is the test server required for running the automation scripts. Download Appium Server from the official [website](https://appium.io/docs/en/2.17/quickstart/install/). Or install via npm for all platforms:
  ```bash
  npm install -g appium
  ```
  
  **Verify Installation**:
  ```bash
  appium -v
  ```

### 6. Appium Flutter Driver (Required for Flutter Testing)
The Appium Flutter Driver is necessary for running tests on Flutter apps. Install the driver via npm for all platforms:
  ```bash
  npm install -g appium-flutter-driver
  ```

  **Verify Installation**:
  ```bash
  appium driver list
  ```

### 7. Code Editor (VS Code)
You’ll need a code editor to write and manage your test scripts. Common Requirement: Visual Studio Code (VS Code) is widely used in Flutter development.

  - **macOS**:
    
    Download from the Visual Studio [website](https://code.visualstudio.com/download). Install the .dmg file and follow the installation process. Or install via Homebrew:
    
      ```bash
      brew install --cask visual-studio-code
      ```

  - **Windows**:

    Download from the Visual Studio [website](https://code.visualstudio.com/download). Run the installer and follow the prompts to set up the editor.

  - **Linux**:
    
    Download from the Visual Studio [website](https://code.visualstudio.com/download). Alternatively, install via the package manager:

      ```bash
      sudo apt update
      sudo apt install code
      ```
  
  **Verify Installation**:
  ```bash
  code -v
  ```

## Setup Environment

## Write First Code to Connect Flutter Application

## Important Notes & Common Issues
