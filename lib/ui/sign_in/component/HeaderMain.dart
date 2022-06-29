import 'package:flutter/material.dart';

class HeaderMain extends StatelessWidget {
  const HeaderMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          "Welcome",
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Text("Sign in",
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white)),
      ],
    );
  }
}
