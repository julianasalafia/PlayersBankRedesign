import 'package:flutter/material.dart';
import 'package:players_bank_redesign/login/sign_up/email_page.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';

import '../../widgets/go_back_button.dart';
import '../../widgets/text_field_widget.dart';

const continueButton = 'CONTINUAR';
const usernameTitle = 'Qual seu username?';
const hintText = '@MeuApelido';

class NickNamePage extends StatelessWidget {
  const NickNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget emailPage = const EmailPage();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const GoBackButton(),
                ),
                const SizedBox(height: sizedBoxHeight),
                const Text(
                  usernameTitle,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: sizedBoxHeight),
                const TextFieldWidget(
                  hintText: hintText,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainButtonStyle(
                  buttonText: continueButton,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => emailPage),
                  ),
                  nextPage: const EmailPage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
