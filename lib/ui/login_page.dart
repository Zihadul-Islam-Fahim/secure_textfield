import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _valueToShow = "";
  String _value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: TextField(
            controller: TextEditingController.fromValue(
              TextEditingValue(
                text: _valueToShow,
                selection: TextSelection.collapsed(offset: _valueToShow.length),
              ),
            ),
            decoration: const InputDecoration(
              labelText: "Password",
              disabledBorder: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(),
              border: OutlineInputBorder(),
            ),
            onChanged: (String val) {
              String value = "";
              if (val.length > _value.length) {
                value += val.substring(_value.length, val.length);
              }
              if (val.length < _value.length) {
                value = _value.substring(1, val.length);
              }
              String valueToShow = '•' * val.length;
              setState(() {
                _valueToShow = valueToShow;
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
