import 'package:flutter/material.dart';
import 'package:loginnew/ui/sign_up/SignUp.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(width * 0.11),
              topLeft: Radius.circular(width * 0.11))),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Email",
              style: Theme.of(context).textTheme.headline6,
            ),
            const TextField(
              decoration:
              InputDecoration(hintText: "Enter your Email"),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              "Password",
              style: Theme.of(context).textTheme.headline6,
            ),
            const TextField(
              obscureText: true,
              decoration:
              InputDecoration(hintText: "Enter your Password"),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              "Forget Password?",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                child: const Text("Sign In"),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Don't have an account?"),
                SizedBox(
                  width: width * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUp()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
