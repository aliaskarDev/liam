import 'package:flutter/material.dart';
import 'package:laim/constants/icon_path.dart';
import 'package:laim/constants/liam_texts.dart';
import 'package:laim/feature/registration/register/widgets/registration_button.dart';
import 'package:laim/feature/registration/register/widgets/registration_container.dart';
import 'package:laim/ui/colors.dart';
import 'package:laim/ui/text_style.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Image.asset(logo),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Column(
            children: [
              Text(
                registration,
                style: HeadlinesTextStyle.style700w33.copyWith(
                  color: MyColors.black,
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              AuthContainer(
                title: imCutomer,
                onTap: () {
                  Navigator.pushNamed(context, '/auth_customer');
                },
              ),
              SizedBox(
                height: height * 0.07,
              ),
              AuthContainer(
                title: imCarrier,
                onTap: () {
                  Navigator.pushNamed(context, '/auth_carrier');
                },
              ),
              SizedBox(
                height: height * 0.2,
              ),
              const AuthButton(
                title: next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
