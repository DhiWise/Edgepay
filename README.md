
# Razorpay API intigration in DhiWise

## Edgepay

Razorpay provides an API, and by integrating that API in DhiWise, it took 1 hour to configure navigation, API integration, saving data in preference, and so on till generating the code.
Create Subscription link at your fingertip, along with payment link, transection. It took 16 hours to complete the whole app and manually it would have costed 120 hour of codding.

The current app of Razorpay subscription feature is not there, and they have just launched their payment link feature in the app at the end of July 2022.

This is Demo Application of Razorpay Usecase.

### Table of Contents
- [System Requirements](#system-requirements)
- [Screenshots](#screenshots)
- [Figma design guideline for better accuracy](#figma-design-guideline-for-better-accuracy)
- [Setup](#setup)
- [Project Structure](#project-structure)
- [How you can do code formatting?](#how-you-can-do-code-formatting)
- [Libraries and tools used](#libraries-and-tools-used)
- [MIT License](#mit-license)
- [Community](#community)

### System Requirements

Dart SDK Version 2.17.0 or greater.
Flutter SDK Version 3.0.0 or greater.

### Screenshots
![Razorpay](https://user-images.githubusercontent.com/84910116/190324321-1bb39ef9-0eba-408c-99aa-da22f7e6f432.png)

### Figma design guideline for better accuracy

Read our guidelines to increase the accuracy of design conversion to code by optimizing Figma designs.
https://docs.dhiwise.com/knowledgehub/reference-guide-and-tools/figma

### Setup

#### 1. Clone the repository
```sh
$ git clone https://github.com/DhiWise/Edgepay
$ cd Edgepay
```
## Install Dependencies

    flutter pub get
## Running the App

    flutter run
# Set Token for API access inside the application for bellow Files
1. api_client.dart
2. Home_controller.dart
3. payment_link_controller.dart
4. payment_link_detail_controller.dart
5. transection_list_controller.dart
6. transection_details_controller.dart
7. subscriptions_link_details_controller.dart
8. subscriptions_plan_details_controller.dart
9. subscriptions_reviwe_controller.dart
 
 Replce your Razorpay token in this formet there ` Basic (base64 encoded string of YOUR_KEY_ID:YOUR_KEY_SECRET)` and run the app. 
 
Check your app's UI from the AppNavigation screen of your app.

### Project Structure

After successful build, your application structure should look like this:

```
.
├── android                         - contains files and folders required for running the application on an Android operating system.
├── assets                          - contains all images and fonts of your application.
├── ios                             - contains files required by the application to run the dart code on iOS platforms.
├── lib                             - Most important folder in the project, used to write most of the dart code.
    ├── main.dart                   - starting point of the application
    ├── core
    │   ├── app_export.dart         - contains commonly used file imports 
    │   ├── constants               - contains all constants classes
    │   ├── errors                  - contains error handling classes                  
    │   ├── network                 - contains network related classes
    │   └── utils                   - contains common files and utilities of project
    ├── data
    │   ├── apiClient               - contains api calling methods 
    │   ├── models                  - contains request/response models 
    │   └── repository              - network repository
    ├── localization                - contains localization classes
    ├── presentation                - contains all screens and screen controllers
    │   └── screens                 - contains all screens
    ├── routes                      - contains all the routes of application
    └── theme                       - contains app theme and decoration classes
```

### How you can do code formatting?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### Libraries and tools used

- get - State management
https://pub.dev/packages/get
- connectivity_plus - For status of network connectivity
https://pub.dev/packages/connectivity_plus
- pull_to_refresh - For list functionalities
https://pub.dev/packages/pull_to_refresh
- cupertino_icons - For iOS icons
https://pub.dev/packages/cupertino_icons
- shared_preferences - Provide persistent storage for simple data
https://pub.dev/packages/shared_preferences
- cached_network_image - For storing internet image into cache
https://pub.dev/packages/cached_network_image
    
### Support

If you have problems or questions go to our Discord channel, we will then try to help you as quickly as possible: https://discord.com/invite/rFMnCG5MZ7

## License

MIT License

Copyright (c) 2022 DhiWise

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Community

<a href="https://twitter.com/dhiwise"><img src="https://user-images.githubusercontent.com/35039342/55471524-8e24cb00-5627-11e9-9389-58f3d4419153.png" width="60" alt="DhiWise Twitter"></a>

<a href="https://www.youtube.com/c/DhiWise"><img src="https://cdn.vox-cdn.com/thumbor/0kpe316UpZWk53iw3bOLoJfF6hI=/0x0:1680x1050/1400x1400/filters:focal(706x391:974x659):format(gif)/cdn.vox-cdn.com/uploads/chorus_image/image/56414325/YTLogo_old_new_animation.0.gif" width="60" alt="DhiWise YouTube"></a>

<a href="https://discord.com/invite/rFMnCG5MZ7"><img src="https://user-images.githubusercontent.com/47489894/183043664-b01aac56-0372-458a-bde9-3f2a6bded21b.png" width="60" alt="DhiWise Discord"></a>

<a href="https://docs.dhiwise.com/"><img src="https://global-uploads.webflow.com/618e36726d3c0f19c9284e56/62383865d5477f2e4f6b6e2e_main-monogram-p-500.png" width="60" alt="DhiWise Documentation"></a>
