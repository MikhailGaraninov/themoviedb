import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/main/main_screen_widget.dart';

import '../../Theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          _FormWidgetState(),
          _HeaderWidget()
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text(
            'In order to use the editing and rating capablities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. ',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: Text("Register")),
          SizedBox(height: 25),
          Text(
            "If you signed up but but didn't get your notification email.",
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            style: AppButtonStyle.linkButton,
            child: Text("Notify email"),
          ),
        ],
      ),
    );
  }
}

class _FormWidgetState extends StatefulWidget {
  _FormWidgetState({Key? key}) : super(key: key);

  @override
  State<_FormWidgetState> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidgetState> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      final navigator = Navigator.of(context);
      navigator
          .push(MaterialPageRoute<void>(builder: ((context) => MainScreenWidget())));
    } else {
      errorText = "Не верный логин";
    }
    setState(() {});
  }

  void _resetPassword() {}

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Color(0xFF212529));
    const color = Color(0xFF01B4E4);
    const textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (errorText != null) ...[
            Text(
              errorText,
              style: TextStyle(fontSize: 17, color: Colors.red),
            ),
            SizedBox(height: 15),
          ],
          Text(
            "Username",
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextField(
              decoration: textFieldDecoration,
              controller: _loginTextController),
          SizedBox(height: 20),
          Text(
            "Password",
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextField(
            decoration: textFieldDecoration,
            controller: _passwordTextController,
            obscureText: true,
          ),
          SizedBox(height: 25),
          Row(
            children: [
              ElevatedButton(
                onPressed: _auth,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    )),
                child: Text("Login"),
              ),
              SizedBox(width: 30),
              TextButton(
                  onPressed: _resetPassword,
                  style: AppButtonStyle.linkButton,
                  child: Text("Reset password"))
            ],
          )
        ],
      ),
    );
  }
}
