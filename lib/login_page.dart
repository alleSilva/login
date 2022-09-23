import 'package:flutter/material.dart';
import 'package:login/ui/icons/social_icons.dart';
import 'package:login/widgets/login_text_field.dart';
import 'package:login/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      // appBar: AppBar(
      //   title: const Text('Cardp.io'),
      // ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Logo(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.brown[900]!,
              ),
            ),
          ),
          const LoginTextField(
            label: 'Email',
          ),
          const LoginTextField(
            label: 'Senha',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Entrar',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  SocialIcons.facebook,
                  color: Colors.brown[500]!,
                ),
                Icon(
                  SocialIcons.google,
                  color: Colors.brown[500]!,
                ),
                Icon(
                  SocialIcons.twitter,
                  color: Colors.brown[500]!,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
