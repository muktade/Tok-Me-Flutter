import 'package:flutter/material.dart';
import 'package:tokme/constant/colors.dart';
import 'package:tokme/wedgets/text_input_fields.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'TokMe',
            style: TextStyle(
              fontSize: 35.0,
              color: buttonColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextInputFields(
              controller: _emailController,
              lableText: 'Email',
              icon: Icons.email,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextInputFields(
              controller: _passwordController,
              lableText: 'Password',
              icon: Icons.lock,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: InkWell(
              onTap: () {
                print('User Login');
              },
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(width: 15.0,),
              InkWell(
                onTap:(){
                  print('Go To Registration Page');
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: buttonColor
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
