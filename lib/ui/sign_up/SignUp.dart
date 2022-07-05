import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Sign Up",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white)),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )),
              Expanded(
                flex: 3,
                child: Container(
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
                          "Username",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const TextField(
                          decoration:
                          InputDecoration(hintText: "Enter your Name"),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          "Email",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const TextField(
                          decoration:
                              InputDecoration(hintText: "Enter your Email"),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          "Number",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const TextField(
                          decoration:
                              InputDecoration(hintText: "Enter your Number"),
                        ),
                        SizedBox(
                          height: height * 0.03,
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
                        Container(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                textStyle: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            child: const Text("Sign up"),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("OR"),
                            ),
                            Expanded(
                                child: Container(
                              height: 1,
                              color: Colors.grey,
                            )),
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(child: Icon(Icons.add)),
                            Expanded(child: Icon(Icons.add)),
                            Expanded(child: Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
