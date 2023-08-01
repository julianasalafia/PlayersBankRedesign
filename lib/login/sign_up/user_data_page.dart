import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';
import 'package:players_bank_redesign/widgets/text_field_widget.dart';
import '../../shared/app_colors.dart';
import '../../widgets/go_back_button.dart';

const continueButton = 'CONTINUAR';
const documentTitle = 'CADASTRO';

class UserDataPage extends StatefulWidget {
  const UserDataPage({super.key});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextStyle textStyle = kEditTextStyle;

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
                  documentTitle,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: sizedBoxHeight),
                const TextFieldWidget(hintText: 'Meu Nome Completo'),
                const SizedBox(height: sizedBoxHeightMin),
                const TextFieldWidget(hintText: 'Eu Nasci no Dia dd/mm/AAAA'),
                const SizedBox(height: sizedBoxHeightMin),
                const TextFieldWidget(hintText: 'Meu RG'),
                const SizedBox(height: sizedBoxHeightMin),
                const TextFieldWidget(hintText: 'Órgão Emissor do RG'),
                const SizedBox(height: sizedBoxHeightMin),
                CountryStateCityPicker(
                  country: country,
                  state: state,
                  city: city,
                  dialogColor: AppColors.grey,
                  textFieldDecoration: const InputDecoration(
                    hintStyle: kEditTextStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: AppColors.orange, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: AppColors.orange, width: 2),
                    ),
                  ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
