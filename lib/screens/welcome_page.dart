import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sign_up_page/screens/sign_up_page.dart';

import '../utils/styles.dart';
import '../widget/button_widget.dart';
import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
            height: screenHeight,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                image: DecorationImage(
                    image: AssetImage('assets/images/splash.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The best \napp for \nyour plants',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                  Gap(20),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const BottomButton(
                          text: 'Sign up',
                          color: Color(0xffebfdf3),
                        ),
                      ),
                      const Gap(20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: BottomButton(
                          text: 'log in',
                          color: Styles.buttonColor,
                          isColor: true,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
