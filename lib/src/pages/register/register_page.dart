import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_delivery/src/pages/register/register_controller.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController _con = new RegisterController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

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
                  _textFieldRegister("Correo electronico", Icons.email, false,
                      TextInputType.emailAddress),
                  _textFieldRegister("Nombre", Icons.person, false),
                  _textFieldRegister("Apellido", Icons.person_outline, false),
                  _textFieldRegister(
                      "Telefono", Icons.phone, false, TextInputType.phone),
                  _textFieldRegister("Contraseña", Icons.lock, true),
                  _textFieldRegister(
                      "Confirmar Contraseña", Icons.lock_outline, true),
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

  Widget _textFieldRegister(String texto, IconData icono, bool password,
      [TextInputType tipo]) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: password,
        keyboardType: tipo,
        controller: _getControllerRegister(texto),
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
        onPressed: _con.register,
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

  TextEditingController _getControllerRegister(String texto) {
    if (texto == "Correo electronico") {
      return _con.emailRegisterController;
    } else if (texto == "Nombre") {
      return _con.nameRegisterController;
    } else if (texto == "Apellido") {
      return _con.lastnameRegisterController;
    } else if (texto == "Telefono") {
      return _con.phoneRegisterController;
    } else if (texto == "Contraseña") {
      return _con.passwordRegisterController;
    } else if (texto == "Confirmar Contraseña") {
      return _con.confirmPasswordRegisterController;
    }
  }
}
