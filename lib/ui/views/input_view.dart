import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  State<InputView> createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _inputText(),
            const SizedBox(height: 20.0),
            _inputTextPassword(),
            const SizedBox(height: 20.0),
            _inputTextPhone(),
            const SizedBox(height: 20.0),
            _inputTextEmail(),
          ],
        ),
      ),
    );
  }

  Widget _inputText() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
          labelText: "Name",
          hintText: "Please enter your name",
          icon: const Icon(Icons.person_2_outlined),
          ),
    );
  }

  Widget _inputTextPassword() {
    return TextField(
      obscureText: _isObscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
        labelText: "Password",
        hintText: "Please enter your password",
        suffixIcon: GestureDetector(
          onTap: () {
            _isObscure = !_isObscure;
            setState(() {});
          },
          child: _isObscure
              ? const Icon(Icons.remove_red_eye)
              : const Icon(Icons.check_circle),
        ),
      ),
    );
  }

  Widget _inputTextPhone() {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        labelText: "Phone",
        hintText: "Please enter your phone",
      ),
    );
  }

  Widget _inputTextEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        labelText: "Email",
        hintText: "Please enter your email",
      ),
    );
  }
}
