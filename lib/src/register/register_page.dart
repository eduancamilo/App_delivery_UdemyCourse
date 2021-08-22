import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';

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
        width: double.infinity,
        child: Stack(children: [
          Positioned(
            top: -80,
            left: -100,
            child: _circleRegister(),
          ),
          Positioned(
            top: 65,
            left: 27,
            child: textRegister(),
          ),
          Positioned(
            top: 51,
            left: -5,
            child: _iconRegister(),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _imageUser(),
                  SizedBox(
                    height: 30,
                  ),
                  _textFieldRegister("Correo electronico", Icons.email),
                  _textFieldRegister("Nombre", Icons.person),
                  _textFieldRegister("Apellido", Icons.person_outline),
                  _textFieldRegister("Telefono", Icons.phone),
                  _textFieldRegister("Contraseña", Icons.lock),
                  _textFieldRegister(
                      "Confirmar Contraseña", Icons.lock_outline),
                  _buttonRegister()
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _circleRegister() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor),
    );
  }

  Widget _textFieldRegister(String texto, IconData icono) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: texto,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(color: MyColors.primaryColorDark),
          prefixIcon: Icon(
            icono,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Registrar"),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  Widget textRegister() {
    return Text(
      'REGISTRO',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontFamily: 'NimbusSans',
      ),
    );
  }

  Widget _iconRegister() {
    return IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white));
  }

  Widget _imageUser() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/user_profile_2.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
  }
}
