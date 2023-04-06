import 'package:flutter/material.dart';

import '../../Theme/app_buttom_style.dart';
import '../main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidget createState() => _AuthWidget();
}

class _AuthWidget extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text('Login to your account'),
            )),
        body: ListView(
          children: [
            _Header(),
          ],
        ));
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 25),
          _FormWidget(),
          const SizedBox(height: 25),
          Text(
            'Зарегистрируйся и смотри сериалы не думая что, тебя взломают все защищено. '
                'Либо создай новый аккаунт и смотри сериала по новому',
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Register'),
            style: AppButtonStyle.linkButtom,
          ),
          const SizedBox(height: 25),
          Text(
            'Не забудь верефицировать свой email.',
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Verify email'),
            style: AppButtonStyle.linkButtom,
          ),
        ]));
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == '1' && password == '1') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/');
    }
    else {
      errorText = "неверный логин или пароль";
    }

    setState(() {});
  }

  void _resetPassword() {
    print('reset Pasword');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Color(0xff212529),
    );

    final color = Color(0xff01B4E4);
    const textDecorator = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 20,),
        ],

        Text(
          'Username',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: textDecorator,
        ),
        SizedBox(height: 20),
        Text(
          'Password',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          decoration: textDecorator,
          obscureText: true,
          controller: _passwordTextController,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              child: Text('Login'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 8)),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: _resetPassword,
              child: Text('Reset password'),
              style: AppButtonStyle.linkButtom,
            )
          ],
        )
      ],
    );
  }
}
