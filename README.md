# Appium Test Automation Setup for Flutter Applications
In this repository, the aim is to share the knowledge by experience and help you to prepare your Appium test environment for mobile app inspection and test automations.
<br><br>
The detailed steps, key notes and solutions will be shared under the /docs folder.

## Requirements
In this study, Python language is preferred to prepare test scenaios and maintain all the automation results. So, here are the requirements(You can check the environment-setup.sh file for quicker way):

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
      
      Set JAVA_HOME (common across all OS) by adding the following to .bash_profile, .zshrc, or .bashrc:
      ```bash
      #paths depends on where Java is installed 
      export JAVA_HOME=/usr/bin/java
      export ANDROID_HOME=/Users/<username>/Library/Android/sdk
      export PATH=$JAVA_HOME/bin:$PATH
      export PATH=$PATH:$ANDROID_HOME/platform-tools
      export PATH=$PATH:$ANDROID_HOME/tools
      export PATH=$PATH:$ANDROID_HOME/tools/bin
      export PATH=$PATH:$ANDROID_HOME/emulator
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
      export JAVA_HOME=/usr/bin/java
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

### Prepare Android Device(Emulator)
Android device is a virtual mobile device to run and simulate the applications without a physical requirement. To create and start the device, you can check out the official [website](https://developer.android.com/studio/run/emulator). Also, you can create & run the emulator via terminal[(website)](https://developer.android.com/studio/run/emulator-commandline). As shown below, you can create and run the emulator by open Android Studio → Tools → SDK Manager → SDK Tools veya Appearance & Behaviour → System Settings → Android SDK → SDK Tools and select Android Emulator and Android SDK Platform-Tools

<p align="center">
  <img src="https://github.com/user-attachments/assets/e9f82449-8826-411a-8373-3f2e2198654b" width="700"/>
</p>

Then, open Virtual Device Manager and create or run the listed emulator. You can use 

<p align="center">
  <img src="https://github.com/user-attachments/assets/42a05c97-01e0-4324-985e-d715ec293edc" width="700"/>
</p>

You can use the online Android devices via:

  ```bash
  adb devices
  ```

<p align="center">
  <img src="https://github.com/user-attachments/assets/e9e49e79-b387-458f-8417-cab284164ec1" width="500"/>
</p>

### Start Appium Server
Appium Server handles appium requests and sends it to the mobile device. You can run the server by simply run ```appium``` on the terminal. You can configure the server for all devices in the local network safely:

  ```bash
  appium server -p 4723 -a 0.0.0.0 -pa /wd/hub --allow-cors
  ```

<p align="center">
  <img src="https://github.com/user-attachments/assets/f3241079-8459-41b8-9f85-3bf7fbe41d6b" width="700"/>
</p>

For further configuration and parameters, you can check out the official [(guide)](https://appium.io/docs/en/2.3/cli/args/).

### Configure & Connect Appium Inspector
Appium Inspector is a GUI assistant tool for Appium, providing visual inspection of the application under test. It can show the application page screenshot along with its page source, and includes various features for interacting with the app. To configure the inspector, Remote Host, Remote Path and Remote Port are assential.

<p align="center">
  <img src="https://github.com/user-attachments/assets/0900c511-c509-4932-b5d0-171a25196b1b" width="700"/>
</p>

  ```bash
  {
    "platformName": "Android",
    "appium:deviceName": "emulator-5554",
    "appium:automationName": "Flutter",
    "appium:app": "/<apk-path>",
    "appium:retry_backoff_time": 2000,
    "appium:maxRetryCount": 5
  }
  ```

## Write First Code to Connect Flutter Application
Here is a sample Appium connection test script for Flutter apps. Also, you can configure and add more abilities to your code via official [(commands-execute)](https://github.com/appium/appium-flutter-driver/blob/main/driver/lib/commands/execute.ts). Here is another example for python code: [flutter-driver-python-example](https://github.com/appium/appium-flutter-driver/blob/main/example/python/example.py)

```python
import time
import json
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction

# Desired Capabilities Definition
desired_capabilities = {
    "platformName": "Android",
    "appium:deviceName": "emulator-5554",
    "appium:automationName": "Flutter",
    "appium:app": "/<apk-path>",
    "appium:retry_backoff_time": 2000,
    "appium:maxRetryCount": 5,
}

#Create a Driver Instance
driver = webdriver.Remote(command_executor='http://127.0.0.1:4723/wd/hub',desired_capabilities=capabilities)
driver.implicitly_wait(5)

# Step 1: Launch the app
flutter_launch_app(driver, "myFlutterApp", ["--start-first-screen"])

# Step 2: Wait for an element to be visible
wait_for(driver, "loginButton", 10)

# Step 3: Click the login button
click_element(driver, "loginButton", 10)

# Step 4: Enter credentials
set_value(driver, "usernameField", "testuser")
set_value(driver, "passwordField", "password123")

# Step 5: Submit login form
click_element(driver, "submitButton", 10)

# Step 6: Check if the user is logged in
wait_for(driver, "homePage", 15)
assert get_text(driver) == "Welcome to Home Page"

# Step 7: Perform scroll action
scroll(driver, "homePageList", "down")
scroll_until_visible(driver, "nextItem", 10)

```

## Important Notes & Common Issues

- **If you want to start/boot the already created emulator on terminal:** You can check the commands [here](https://developer.android.com/studio/run/emulator-commandline) 
- **If you got a cache issue on the app re-run:** You can try to add ```"fullReset":true,``` in the desired capabilities list.
- **If you want to you the Appium Desktop(UI for Server):** You should check [here](https://github.com/appium/appium-desktop) for version compatibility(latest versions are not supported).
- **If you got a socket error on Appium Server console:** You can try the solution [here](https://stackoverflow.com/questions/59075420/an-unknown-server-side-error-occurred-while-processing-the-command-could-not-pr)
- **If you got the "ext.flutter.driver" is not found in "extensionRPCs" error:** You can check out the solutions [solution1](https://stackoverflow.com/questions/58729864/ext-flutter-driver-is-not-found-in-extensionrpcs-what-would-be-the-issue) - [solution2](https://github.com/appium/appium-flutter-driver/issues/28) - [solution3](https://github.com/appium/appium-flutter-driver/issues/27)
- **If you got the Dart Observatory error as below:** You can check out the solution [here](https://stackoverflow.com/questions/75872588/appium-flutter-check-dart-observatory-uri-no-uri-found-in-the-device-log).

  <p align="center">
  <img src="https://github.com/user-attachments/assets/11bba868-1f0e-4826-94c0-effe5e3546a1" width="400"/>
  </p>
