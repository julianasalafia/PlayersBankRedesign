import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';

const continueButton = 'continuar';

class DocumentPage extends StatelessWidget {
  const DocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 45, 15, 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: AppColors.orange,
                  ),
                ),
                SizedBox(height: 25.0),
                Text(
                  'Digite o seu CPF',
                  style: kTitleTextStyle,
                ),
                SizedBox(height: 25.0),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: AppColors.orange, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: AppColors.orange, width: 2),
                      ),
                      hintText: '000.000.000-00'),
                  style: kEditTextStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainButtonStyle(buttonText: continueButton, onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
