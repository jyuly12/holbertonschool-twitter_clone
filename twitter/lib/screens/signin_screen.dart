import 'package:flutter/material.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

import '../providers/auth_state.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _emailController = _emailController;
    _passwordController = _passwordController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController = _emailController;
    _passwordController = _passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 60),
              height: 70,
              child: const Center(
                child: Text('Sign In', style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold,
                ),
                ),
              )
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Image.network('http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png'),
          ),
          CustomEntryField(
            hint: 'Enter email',
            controller: _emailController,
            isPassword: false,
          ),
          CustomEntryField(
            hint: 'Enter password',
            controller: _passwordController,
            isPassword: true,
          ),
          Center(
            child: CustomFlatButton(
              label: "Submit",
              onPressed: signInUser,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              }),
              child: const Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgetPassword()),
              );
            }),
            child: const Center(
              child: Text(
                'Forget password?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }

  signInUser() async {
    final ifSignIn = await Auth().attemptLogin(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim()
    );

    if (ifSignIn == Errors.none) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BarMenu()),
      );
    } else {
      String errorMsg = '';
      switch (ifSignIn) {
        case Errors.noUserError:
          errorMsg = 'No user found for that email!';
          break;
        case Errors.wrongError:
          errorMsg = 'Wrong password!';
          break;
        case Errors.error:
          errorMsg = 'Failed to Login! Please try later';
          break;
        default:
          errorMsg = 'Unknown error';
      }
      final snackBar = SnackBar(
        content: Text(errorMsg),
        backgroundColor: Colors.red,
        action: SnackBarAction(
          label: '',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}