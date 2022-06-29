import 'package:flutter/material.dart';
import 'package:loginnew/ui/sign_in/component/HeaderMain.dart';
import 'package:loginnew/ui/sign_in/component/sign_in_form.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.deepOrange,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: HeaderMain(),
                ),
              ),
              Expanded(
                flex: 2,
                child: SignInForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}


