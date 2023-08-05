import 'package:country_state_picker/country_state_picker.dart';
import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';
import 'package:players_bank_redesign/widgets/text_field_widget.dart';
import '../../shared/app_colors.dart';
import '../../widgets/go_back_button.dart';

const continueButton = 'CONTINUAR';
const documentTitle = 'Adicional';
const description =
    'De acordo com algumas regras do Banco Central, precisamos de mais algumas informações adicionais. Tudo bem?';

class UserProfessionPage extends StatefulWidget {
  const UserProfessionPage({super.key});

  @override
  State<UserProfessionPage> createState() => _UserProfessionPageState();
}

class _UserProfessionPageState extends State<UserProfessionPage> {
  String? state;
  String? country;

  @override
  Widget build(BuildContext context) {
    bool showLabel = false;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  documentTitle,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: sizedBoxHeightMin),
                const Text(
                  description,
                  style: kEditTextStyle,
                ),
                const SizedBox(height: sizedBoxHeight),
                const TextFieldWidget(hintText: 'Endereço'),
                const SizedBox(height: sizedBoxHeightMin),
              ],
            ),
            const SizedBox(height: sizedBoxHeightMin),
            Row(
              children: [
                Expanded(
                  child: MainButtonStyle(
                    buttonText: continueButton,
                    onPressed: () {},
                    nextPage: null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
