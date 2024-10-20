import 'package:flixgo/core/common/widgets/app_text_field/app_text_field.dart';
import 'package:flixgo/core/constant/constant.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.darkColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxWidth;
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: height * 0.7,
                  child: Image.asset(AppConstants.marvelLogo),
                ),
                AppTextField(
                  label: "Email",
                  hintText: "example@gmail.com",
                  textCapitalization: TextCapitalization.none,
                  textInputType: TextInputType.emailAddress,
                  validator: (String? text) {
                    return "";
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                ),
                AppTextField(
                  label: "Password",
                  hintText: "",
                  textCapitalization: TextCapitalization.none,
                  textInputType: TextInputType.text,
                  isPassword: true,
                  validator: (String? text) {
                    return "";
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                Row(
                  children: [],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
