//* interface segregation principle
import 'package:flutter/foundation.dart';

abstract class Phone {
  void makeCall();
}

abstract class EmailDevice {
  void sendEmail();
}

abstract class WebDevice {
  void browseInternet();
}

abstract class CameraDevice {
  void takePicture();
}

class SmartWatch implements Phone {
  @override
  void makeCall() {
    debugPrint("making the call using smartwatch...");
  }
}

class SmartPhone implements Phone, WebDevice, EmailDevice, CameraDevice {
  @override
  void browseInternet() {
    debugPrint("browsing the internet...");
  }

  @override
  void makeCall() {
    debugPrint("making the call...");
  }

  @override
  void sendEmail() {
    debugPrint("sending the email...");
  }

  @override
  void takePicture() {
    debugPrint("taking the picture...");
  }
}
