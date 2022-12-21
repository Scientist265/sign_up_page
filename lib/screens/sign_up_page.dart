import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sign_up_page/widget/button_widget.dart';
import '../widget/field_layout.dart';
import '../utils/styles.dart';
import '../widget/headlinelayout.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffebfdf3),
      body: ListView(
        padding: EdgeInsets.only(left: 21, top: 70),
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                  backgroundColor: Styles.primaryColor,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Styles.textColor,
                    ),
                  )),
            ),
          ),
          const HeadLineLayout(
            headerText: 'Register',
            infoText: 'Create your new Account',
            imgPath: 'assets/images/image2.png',
          ),
          const Gap(8),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const FieldLayout(
                  icon: Icons.person,
                  text: 'e.g Abubakr Sideeq',
                  obscure: false,
                ),
                const Gap(20),
                const FieldLayout(
                  icon: Icons.mail,
                  text: 'example@gmail.com',
                  obscure: false,
                ),
                const Gap(20),
                const FieldLayout(
                  icon: Icons.lock,
                  text: 'Password',
                  obscure: true,
                ),
                const Gap(20),
                const FieldLayout(
                  obscure: true,
                  icon: Icons.mail,
                  text: 'Confirm Password',
                ),
                const Gap(20),
                Text(
                  'By signing up you\'ve agree to  ',
                  style: Styles.smallTexts.copyWith(fontSize: 17),
                ),
                Text(
                  'Our and Terms of Use And Privacy Notice',
                  style: Styles.smallTexts.copyWith(
                      color: Styles.textColor, fontWeight: FontWeight.w500),
                ),
                const Gap(50),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: BottomButton(
                    text: 'Sign up',
                    color: Styles.buttonColor,
                    isColor: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: Styles.smallTexts.copyWith(fontSize: 17),
                    ),
                    const Gap(3),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: Styles.smallTexts.copyWith(
                            color: Styles.textColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
