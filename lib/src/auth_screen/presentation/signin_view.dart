import 'package:flixgo/core/common/widgets/app_button/primary_button.dart';
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
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
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
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: PrimaryButton(
                      widgetButton: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      backgroundButton: AppConstants.primaryColor,
                      onTap: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 2,
                            indent: 0,
                            endIndent: width * 0.1,
                          ),
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 2,
                            indent: width * 0.1,
                            endIndent: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      "Continue With",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  PrimaryButton(
                    backgroundButton: AppConstants.primaryColor,
                    widgetButton: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          size: 50,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
