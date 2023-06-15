// import 'package:another_flushbar/flushbar.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import '../../../common_widgets/buttonStyle.dart';
import '../../../routing/app_router.dart';
// import '../data/google_signin.dart';

class TextFieldLogin extends StatefulWidget {
  @override
  State<TextFieldLogin> createState() => _TextFieldLoginState();
}

class _TextFieldLoginState extends State<TextFieldLogin> {
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  late String email;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  // static Future<User?> loginUsingEmailPassword({
  //   required String email,
  //   required String password,
  //   required BuildContext context,
  // }) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;
  //   try {
  //     UserCredential userCredential = await auth.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     user = userCredential.user;
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == "user not found") {
  //       print("No user not for that the email");
  //     }
  //   }
  //   return user;
  // }

  @override
  Widget build(BuildContext context) {
    final Widget _loginScreen = Container(
      padding: EdgeInsets.only(
        left: SizeVariables.getWidth(context) * 0.05,
        right: SizeVariables.getWidth(context) * 0.05,
        top: SizeVariables.getHeight(context) * 0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome!',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).hintColor,
                  fontFamily: 'PT Serif',
                  fontSize: MediaQuery.of(context).size.width * 0.085,
                ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.005,
          ),
          Text(
            'Sign in to continue',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).hintColor,
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.05,
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: userName,
                  enableSuggestions: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter email";
                    }
                    if (!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return "Please enter a vaild email";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value!;
                  },
                  // cursorHeight: SizeVariables.getHeight(context) * 0.034,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
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
                    hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: const Color(0xfff7B7B7B),
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width*0.062,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.06,
                ),
                TextFormField(
                  controller: passWord,
                  // cursorHeight: SizeVariables.getHeight(context) * 0.034,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Password";
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
                        color: const Color(0xfffD9D9D9),
                      ),
                    ),
                    hintText: 'password',
                    hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: const Color(0xfff7B7B7B),
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width*0.062,
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
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? SizeVariables.getHeight(context) * 0.04
                        : SizeVariables.getHeight(context) * 0.09,
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? SizeVariables.getWidth(context) * 0.78
                        : SizeVariables.getWidth(context) * 0.83,
                    label: 'Login',
                    onPressed: () async {
                      Get.toNamed(RoutesClass.drawerRoute());
                      // if (_formkey.currentState!.validate()) {

                      //   FirebaseAuth.instance
                      //       .signInWithEmailAndPassword(
                      //           email: userName.text, password: passWord.text)
                      //       .then((value) {
                      //     Get.toNamed(RoutesClass.getHomeRoute());
                      //     Flushbar(
                      //       backgroundColor: Firstgradient,
                      //       duration: const Duration(seconds: 4),
                      //       flushbarPosition: FlushbarPosition.BOTTOM,
                      //       borderRadius: BorderRadius.circular(10),
                      //       icon: const Icon(Icons.done, color: Colors.white),
                      //       leftBarIndicatorColor: Colors.green,
                      //       // margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                      //       // title: 'Email',
                      //       message: 'Login Successfully',
                      //       barBlur: 20,
                      //     ).show(context);
                      //   }).onError((error, stackTrace) {
                      //     Flushbar(
                      //       backgroundColor: Firstgradient,
                      //       duration: const Duration(seconds: 4),
                      //       flushbarPosition: FlushbarPosition.BOTTOM,
                      //       borderRadius: BorderRadius.circular(10),
                      //       icon: const Icon(Icons.error, color: Colors.white),
                      //       leftBarIndicatorColor: Colors.red,
                      //       // margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                      //       // title: 'Email',
                      //       message: 'Not found username',
                      //       barBlur: 20,
                      //     ).show(context);
                      //     print("Error ${error.toString()}");
                      //   });
                      // }
                      // return;
                    },
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                ),
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
                            fontSize: MediaQuery.of(context).size.width * 0.047,
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
                height: SizeVariables.getHeight(context) * 0.06,
              ),
              Text(
                'Social Media Login',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                    ),
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // final provider = Provider.of<GoogleSignInProvider>(
                      //   context,
                      //   listen: false,
                      // );
                      // provider.googleLogIn();
                    },
                    child: Image.asset(
                      'assets/img/google.png',
                    ),
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
                height: SizeVariables.getHeight(context) * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have any account?',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                        ),
                  ),
                  TextButton(
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.blue,
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                          ),
                    ),
                    onPressed: () {
                      Get.toNamed(RoutesClass.signupRoute());
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    return LayoutBuilder(builder: (ctx, constraints) {
      final width = constraints.maxWidth;
      Widget child;
      if (width >= 600) {
        child = _loginScreen;
      } else {
        child = _loginScreen;
      }
      return child;
    });
  }
}
