import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:registertask/Screens/registration_screen.dart';
import 'package:registertask/modules/google_sign_in.dart';
import 'package:registertask/services/auth_provider.dart';
import 'package:registertask/shared/components/components.dart';

import '../shared/colors/colors.dart';
import 'home_page.dart';

class SignIn1 extends StatefulWidget {
  SignIn1({Key? key}) : super(key: key);

  @override
  State<SignIn1> createState() => _SignIn1State();
}

class _SignIn1State extends State<SignIn1> {
  @override
  void initState() {
    var authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.currentUser.listen((fbUser) {
      if (fbUser != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
    super.initState();
  }

  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lets Sign you in",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 37),
                  ),
                  Text(
                    "Welcome Back, ",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: HexColor("#000000"),
                        fontSize: 28,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "You have been missed",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: HexColor("#000000"),
                        fontSize: 28,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "please Enter your Email Address";
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: "Email, Phone & username",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Password is too short";
                      }
                    },
                    onFieldSubmitted: (value) {
                      if (formKey.currentState!.validate()) {
                        // ShopLoginCubit.get(context).userLogin(
                        //     email: emailController.text,
                        //     password: passwordController.text);
                      }
                    },
                    decoration: const InputDecoration(
                      //prefixIcon: Icon(Icons.lock_outline),
                      //suffixIcon: Icon(Icons.visibility_outlined),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontSize: 15,
                              color: HexColor("#000000"),
                              fontFamily: 'Roboto',
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ConditionalBuilder(
                    condition: true,
                    builder: (context) => Container(
                      height: 40.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: defaultColor,
                        borderRadius: BorderRadius.circular(
                          3.0,
                        ),
                      ),
                      child: MaterialButton(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18,
                            color: HexColor("#FFFFFF"),
                            fontFamily: 'Roboto',
                          ),
                        ),
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                      ),
                    ),
                    fallback: (context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  myDivider(),
                  Row(
                    children: [
                      Container(
                        height: 50.0,
                        width: 100.0,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.google,
                              color: HexColor("#EB4335"),
                            )),
                      ),
                      Container(
                        height: 50.0,
                        width: 100.0,
                        child: IconButton(
                            onPressed: () {
                              authProvider.loginFacebook();
                            },
                            icon: Icon(
                              FontAwesomeIcons.facebook,
                              color: HexColor("#3C5A9A"),
                            )),
                      ),
                      Container(
                        height: 50.0,
                        width: 100.0,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.apple,
                              color: HexColor("#000000"),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          navigateTo(context, RegisterationScreeen());
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor("#000000"),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
