import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_de/Screen/homePage.dart';
import 'package:tour_de/Screen/signUp.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  // const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 0.16.sh,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'asset/Images/logo/logo.png',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 0.73.sw),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w900,
                    fontSize: 25.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // For email text Field
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        controller: emailController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Email/Phone Number',
                            labelText: 'Email/Phone Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        validator: (value) {
                          if (emailController.text.isEmpty) {
                            return 'Enter Email/Phone Number';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    // For password Text field
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: !isPasswordVisible,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                icon: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                )),
                            hintText: 'Password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        validator: (value) {
                          if (passwordController.text.isEmpty) {
                            return 'Enter Password';
                          }
                        },
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 0.5.sw,
                          ),
                          child: Text(
                            'Forget Password!',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 0.7.sw,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Log in Successful')));

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homePage()),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Invalid Log in')));
                          }
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Divider(
                                thickness: 1.5,
                                color: Colors.grey,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Divider(
                                thickness: 1.5,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.google),
                          color: Color(0xFF4285F4),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 0.038.sw,
                              backgroundColor: Colors.white,
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Color(0xFF4285F4),
                              ),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 0.038.sw,
                              backgroundColor: Colors.white,
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Color(0xFF4285F4),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'n have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signUp()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16.sp),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
