import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/constants.dart';
import 'frame/index.dart';

class LoginPage extends StatelessWidget {
  static String routeName = './login';
  LoginPage({Key? key}) : super(key: key);

  final LoginScreenController _loginScreenController =
      Get.put(LoginScreenController());
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  const Text(
                    "Sign in with your email and password",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailcontroller,
                    style: const TextStyle(color: kPrimaryColor),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kTextColor)),
                        fillColor: kTextColor,
                        labelText: "Email",
                        hintText: "Enter your email",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.mail),
                        hintStyle: TextStyle(color: kPrimaryColor),
                        labelStyle: TextStyle(color: kPrimaryColor)),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: kPrimaryColor),
                      controller: _passwordcontroller,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kTextColor)),
                        fillColor: kTextColor,
                        labelText: "Password",
                        hintText: "Enter your password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.password_sharp),
                        hintStyle: TextStyle(color: kPrimaryColor),
                        labelStyle: TextStyle(color: kPrimaryColor),
                      )),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  Center(
                    child: InkWell(
                      onTap: () {
                        _loginScreenController.signInUser(
                            _emailcontroller.text, _passwordcontroller.text);
                      },
                      child: Container(
                        width: double.infinity,
                        height: getProportionateScreenHeight(50),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            )));
  }
}
