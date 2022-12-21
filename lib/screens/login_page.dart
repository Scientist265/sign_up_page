import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sign_up_page/screens/sign_up_page.dart';
import 'package:sign_up_page/screens/welcome_back_page.dart';
import 'package:sign_up_page/widget/field_layout.dart';
import '../utils/styles.dart';
import '../widget/button_widget.dart';
import '../widget/headlinelayout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffebfdf3),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: ListView(
            children: [
              Container(
                height: 330,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/splash_2.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: const HeadLineLayout(
                  headerText: 'Welcome Back',
                  infoText: 'Login to your account',
                  imgPath: 'assets/images/image1.png',
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    children: [
                      const FieldLayout(
                        icon: Icons.person,
                        text: 'Full Name',
                        obscure: false,
                      ),
                      const Gap(20),
                      const FieldLayout(
                        icon: Icons.lock,
                        text: 'Enter your Password',
                        obscure: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.check_circle,
                                  color: Styles.textColor,
                                ),
                              ),
                              const Gap(3),
                              Text('Remember me',
                                  style: Styles.smallTexts.copyWith(
                                      color: const Color(0xFF426E52))),
                            ],
                          ),
                          Text(
                            'Forgot Password?',
                            style: Styles.smallTexts.copyWith(
                              color: const Color(0xFF426E52),
                            ),
                          ),
                        ],
                      ),
                      Gap(30),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FirstScreen()));
                        },
                        child: BottomButton(
                          text: 'Login',
                          color: Styles.buttonColor,
                          isColor: true,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: Styles.smallTexts.copyWith(fontSize: 17),
                          ),
                          const Gap(3),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contex) => const SignUpPage()));
                            },
                            child: Text(
                              'Sign Up',
                              style: Styles.smallTexts.copyWith(
                                  color: Styles.textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
