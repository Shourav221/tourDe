import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_de/Screen/logIn.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          // bottom: true,
          child: Column(
            children: [
              Center(
                child: Container(
                  child: CircleAvatar(
                    radius: 0.16.sh,
                    backgroundColor: Colors.white,
                    child: Image.asset('asset/Images/logo/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 0.69.sw),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Email or Phone number Section
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: emailController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Email/Phone Number',
                          labelText: 'Email/Phone Number',
                        ),
                        validator: (value) {
                          if (emailController.text.isEmpty) {
                            return 'Enter your email';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    // Password Section
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: !isPasswordVisible,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: Icon(isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (passwordController.text.isEmpty) {
                            return 'Enter a password';
                          } else if (passwordController.text.length < 6) {
                            return 'invalid password';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    // Confirm password section
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: confirmPassController,
                        obscureText: !isConfirmPasswordVisible,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                                });
                              },
                              icon: Icon(isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                        ),
                        validator: (value) {
                          if (confirmPassController.text.isEmpty) {
                            return 'Re-type your password';
                          } else if (confirmPassController.text !=
                              passwordController.text) {
                            return 'Your password is not matched';
                          } else if (confirmPassController.text ==
                              passwordController.text) {
                            return null;
                          } else {
                            return 'invalid password';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 0.55.sw,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Sign up Success')));

                            // To navigate in  login page
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Registration failed')));
                          }
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20.sp),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50, vertical: 0.05.sh),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Security',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.teal,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'and',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
