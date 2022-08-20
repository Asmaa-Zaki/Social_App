import 'package:flutter/material.dart';
import 'package:social_app/Widgets/SharedWidgets/SignAndRegisterCurves/bottom_curves.dart';
import 'package:social_app/Widgets/SharedWidgets/SignAndRegisterCurves/top_curves.dart';
import 'package:social_app/Widgets/SignUpScreen/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              flex: 3,
              child: TopCurves(
                headerText: 'Register',
              )),
          Expanded(flex: 7, child: SignUpBody()),
          const Expanded(flex: 2, child: BottomCurves())
        ],
      ),
    );
  }
}
