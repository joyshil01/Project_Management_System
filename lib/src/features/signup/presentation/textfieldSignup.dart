import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constans.dart';
import '../../../common_widgets/buttonStyle.dart';
import '../../../routing/app_router.dart';
import '../../../utils/media-query.dart';

class TextFieldSignup extends StatefulWidget {
  @override
  State<TextFieldSignup> createState() => _TextFieldSignupState();
}

class _TextFieldSignupState extends State<TextFieldSignup> {
  late String email, password;
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _c_password = new TextEditingController();
  var confirmPass;
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  static Future<User?> signupUsingEmailPassword({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user not found") {
        print("No user not for that the email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: SizeVariables.getWidth(context) * 0.05,
        right: SizeVariables.getWidth(context) * 0.05,
        top: SizeVariables.getHeight(context) * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi!',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).hintColor,
                  fontFamily: 'PT Serif',
                  fontSize: 34,
                ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.005,
          ),
          Text(
            'Create a new account',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).hintColor,
                  fontSize: 18,
                ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.05,
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    controller: _email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter email";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return "Please enter a vaild email";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                    cursorHeight: SizeVariables.getHeight(context) * 0.034,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffD9D9D9),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffD9D9D9),
                        ),
                      ),
                      hintText: 'ex@gmail.com',
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xfff7B7B7B),
                              ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.04,
                ),
                Container(
                  child: TextFormField(
                    controller: _password,
                    cursorHeight: SizeVariables.getHeight(context) * 0.034,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      confirmPass = value;
                      if (value!.isEmpty) {
                        return "Please Enter New Password";
                      } else if (value!.length < 8) {
                        return "Password must be atleast 8 characters long";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffD9D9D9),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffD9D9D9),
                        ),
                      ),
                      hintText: 'password',
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xfff7B7B7B),
                              ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.04,
                ),
                Container(
                  child: TextFormField(
                    controller: _c_password,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Re-Enter New Password";
                      } else if (value.length < 8) {
                        return "Password must be atleast 8 characters long";
                      } else if (value != confirmPass) {
                        return "Password must be same as above";
                      } else {
                        return null;
                      }
                    },
                    cursorHeight: SizeVariables.getHeight(context) * 0.034,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 16,
                        ),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffD9D9D9),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffD9D9D9),
                        ),
                      ),
                      hintText: 'Confirm password',
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xfff7B7B7B),
                              ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.085,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginButton(
                    height: SizeVariables.getHeight(context) * 0.04,
                    width: SizeVariables.getWidth(context) * 0.78,
                    label: 'Sign Up',
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: _email.text,
                          password: _password.text,
                        )
                            .then((value) {
                          print("Created New Account");
                          Get.toNamed(RoutesClass.loginRoute());
                          Flushbar(
                            backgroundColor: Firstgradient,
                            duration: const Duration(seconds: 4),
                            flushbarPosition: FlushbarPosition.BOTTOM,
                            borderRadius: BorderRadius.circular(10),
                            icon: const Icon(Icons.done, color: Colors.green),
                            // margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                            // title: 'Create Account Successful',
                            message: 'Create Account Successful',
                            barBlur: 20,
                          ).show(context);
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => HomeScreen()));
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      } else {
                        print("UnSuccessfull");
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.05,
              ),
              Container(
                width: SizeVariables.getWidth(context) * 0.65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      width: SizeVariables.getWidth(context) * 0.25,
                      color: Color(0xfffD9D9D9),
                    ),
                    Text(
                      'Or',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                    ),
                    Container(
                      height: 2,
                      width: SizeVariables.getWidth(context) * 0.25,
                      color: Color(0xfffD9D9D9),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.05,
              ),
              Text(
                'Social Media Login',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/google.png',
                  ),
                  SizedBox(
                    width: SizeVariables.getWidth(context) * 0.01,
                  ),
                  Image.asset(
                    'assets/img/facebook.png',
                  ),
                ],
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have a account?',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 14,
                        ),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign in',
                    ),
                    onPressed: () {
                      Get.toNamed(RoutesClass.loginRoute());
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
