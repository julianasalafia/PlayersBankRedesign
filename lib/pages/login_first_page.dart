import 'package:flutter/material.dart';
import '../shared/app_colors.dart';
import '../shared/constants.dart';
import '../widgets/main_button.dart';
import '../widgets/shadow_button.dart';

const imageLogo = 'assets/images/pb_logo.png';
const imageControle = 'assets/images/controle.png';
const loginButtonText = 'ENTRAR';
const createAccountButtonText = 'QUERO MINHA CONTA';

const titlePartIText = 'O BANCO QUE';
const titlePartIIText = 'JOGA JUNTO';

const height = 10.0;
const imageHeight = 50.0;

class LoginFirstPage extends StatelessWidget {
  const LoginFirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                SizedBox(
                  height: imageHeight,
                  child: Image.asset(
                    imageLogo,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(height: height),
              ],
            ),
            Center(
              child: Column(
                children: [
                  const Text(
                    titlePartIText,
                    style: kTitleTextStyle,
                  ),
                  Text(
                    titlePartIIText,
                    style: kTitleTextStyle.copyWith(color: AppColors.orange),
                  ),
                  SizedBox(
                    child: Image.asset(
                      imageControle,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: MainButtonStyle(buttonText: loginButtonText),
                      ),
                    ],
                  ),
                  SizedBox(height: height),
                  Row(
                    children: [
                      Expanded(
                          child: ShadowButton(
                              buttonText: createAccountButtonText)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
