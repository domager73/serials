import 'package:flutter/material.dart';

import '../auth/auth_widget.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  final color = Color(0xff01B4E4);

  void _login() {
    final navigator = Navigator.of(context);

    navigator.pushReplacementNamed('/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Serial'),
            SizedBox(
              width: 1,
            ),
            TextButton(
              onPressed: _login,
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
          ],
        ),
      ),
    );
  }
}
