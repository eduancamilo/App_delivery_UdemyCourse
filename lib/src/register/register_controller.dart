import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailRegisterController = new TextEditingController();
  TextEditingController nameRegisterController = new TextEditingController();
  TextEditingController lastnameRegisterController =
      new TextEditingController();
  TextEditingController phoneRegisterController = new TextEditingController();
  TextEditingController passwordRegisterController =
      new TextEditingController();
  TextEditingController confirmPasswordRegisterController =
      new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void register() {
    String email = emailRegisterController.text.trim();
    String name = nameRegisterController.text;
    String lastname = lastnameRegisterController.text;
    String phone = phoneRegisterController.text.trim();
    String password = passwordRegisterController.text.trim();
    String confirmPassword = confirmPasswordRegisterController.text.trim();

    print("Email: $email");
    print("name: $name");
    print("lastname: $lastname");
    print("phone: $phone");
    print("pass: $password");
    print("ConfirmPass: $confirmPassword");
  }
}
