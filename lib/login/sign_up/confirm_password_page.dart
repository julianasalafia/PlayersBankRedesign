import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';
import 'package:players_bank_redesign/widgets/text_field_widget.dart';
import '../../widgets/go_back_button.dart';

const createPasswordButton = 'CONFIRMAR SENHA';
const passwordTitle = 'Confirme a sua senha...';
const hintText = 'A123456a';

class ConfirmPasswordPage extends StatelessWidget {
  const ConfirmPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  passwordTitle,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: sizedBoxHeightMin),
                const Text(
                  'Sua senha deve conter letras e números, pelo menos uma letra maiúscula.',
                  style: kEditTextStyle,
                ),
                const SizedBox(height: sizedBoxHeight),
                const TextFieldWidget(
                  hintText: hintText,
                  obscureText: true,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainButtonStyle(
                  buttonText: createPasswordButton,
                  onPressed: () {},
                  nextPage: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
