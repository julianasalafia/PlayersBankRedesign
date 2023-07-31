import 'package:flutter/material.dart';
import 'package:players_bank_redesign/home_page/home_page.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';
import '../../widgets/go_back_button.dart';
import '../../widgets/text_field_widget.dart';

const continueButton = 'continuar';
const documentTitle = 'Digite o seu CPF';
const hintText = '000.000.000-00';
const welcomeBackTitle = 'Bem vindo de volta!';

class LoginDocumentPage extends StatelessWidget {
  const LoginDocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget homePage = const HomePage();

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
                Text(
                  welcomeBackTitle,
                  style: kTitleTextStyle.copyWith(color: AppColors.orange),
                ),
                const SizedBox(height: sizedBoxHeightMin),
                const Text(
                  documentTitle,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: sizedBoxHeight),
                const TextFieldWidget(hintText: hintText),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainButtonStyle(
                  buttonText: continueButton,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homePage),
                  ),
                  nextPage: const HomePage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
