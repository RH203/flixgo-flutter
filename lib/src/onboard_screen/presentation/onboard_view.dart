import 'package:flixgo/core/common/widgets/app_button/primary_button.dart';
import 'package:flixgo/core/constant/constant.dart';
import 'package:flutter/material.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> _imageAssets = [
    AppConstants.onboardImage1,
    AppConstants.onboardImage2,
    AppConstants.onboardImage3,
    AppConstants.onboardImage4,
    AppConstants.onboardImage5,
  ];

  final List<String> _titles = [
    "All your favourite\n MARVEL Movies & Series\n at one place",
    "Watch Online\n or\n Download Offline",
    "Create profiles for\n diffrent members &\n get personalised\n recommendations",
    "Plans according to your\n needs at affordable\nj prices",
    "Let’s Get Started !!!"
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _onTap() {
    if (_currentPage == (_imageAssets.length - 1)) {
      // navigate login
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.darkColor,
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: _imageAssets.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Image.asset(
                  _imageAssets[index],
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 300,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppConstants.marvelLogo,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          _titles[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: PrimaryButton(
                    title: _currentPage == (_imageAssets.length - 1)
                        ? "Get Started"
                        : "Continue",
                    onTap: _onTap,
                    backgroundButton: AppConstants.primaryColor,
                    textColor: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
