import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import '../../widgets/go_back_button.dart';
import '../../widgets/main_button.dart';
import '../../widgets/text_field_widget.dart';

const continueButton = 'REENVIAR CÓDIGO';
const usernameTitle = 'Enviamos um código para você!';
const hintText = '@MeuApelido';

class CodeConfirmationPage extends StatelessWidget {
  const CodeConfirmationPage({super.key});

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
                  usernameTitle,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: sizedBoxHeight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 4; i++)
                      const SizedBox(
                        width: 85,
                        child: TextFieldNumberWidget(),
                      ),
                  ],
                ),
                const SizedBox(height: sizedBoxHeightMin),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainButtonStyle(
                  buttonText: continueButton,
                  onPressed: () {},
                  nextPage: null,
                ),
                const SizedBox(height: sizedBoxHeightMin),
                const Text(
                  'O código pode demorar até 50 segundos para ser enviado.',
                  style: kWarningTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
