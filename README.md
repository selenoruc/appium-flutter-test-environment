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
- Appium (Server) - Only command-line is officialy supported, Desktop GUI is not supported
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


## Setup Environment

## Write First Code to Connect Flutter Application

## Important Notes & Common Issues
