import 'package:flutter/material.dart';
import 'package:tokme/wedgets/text_input_fields.dart';

import '../../../constant/colors.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
            'Register',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64.0,
                backgroundImage: NetworkImage(
                    'https://www.shutterstock.com/image-vector/user-avatar-icon-sign-profile-260nw-1145752283.jpg'),
                backgroundColor: Colors.black,
              ),
              Positioned(
                bottom: -10.0,
                left: 88.0,
                child: IconButton(
                  onPressed: () {
                    print('Icon pressed');
                  },
                  icon: const Icon(Icons.add_a_photo),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextInputFields(
              controller: _nameController,
              lableText: 'Name',
              icon: Icons.person,
            ),
          ),
          const SizedBox(
            height: 15.0,
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
            height: 15.0,
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
          const SizedBox(
            height: 25.0,
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
                print('User Register');
              },
              child: const Center(
                child: Text(
                  'Register',
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
                'Already have an account?',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              InkWell(
                onTap: () {
                  print('Go To Registration Page');
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: buttonColor,
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
