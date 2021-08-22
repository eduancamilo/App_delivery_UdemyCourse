import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(),
      ),
    );
  }

  Widget _textFieldRegister() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Correo electronico',
      ),
    );
  }

  Widget _imagePerfil() {
    return Container(
      margin: EdgeInsets.only(
        top: 100,
      ),
      child: Image.asset(
        'assets/img/user_profile.png',
        width: 100,
        height: 100,
      ),
    );
  }
}
