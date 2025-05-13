import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_de/Screen/homePage.dart';
import 'package:tour_de/Screen/signUp.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 0.16.sh,
              backgroundColor: Colors.white,
              child: Image.asset(
                'asset/logo.png',
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
              key: _formkey,
              child: Column(
                children: [
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
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
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
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Log in Successful')));

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homePage()),
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
                      CircleAvatar(
                          radius: 0.038.sw,
                          child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.google),
                            color: Color(0xFF4285F4),
                          )),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signUp()));
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.w900,
                                fontSize: 14.sp,
                              ),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
