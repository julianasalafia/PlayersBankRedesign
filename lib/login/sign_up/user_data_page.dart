import 'package:flutter/material.dart';
import 'package:players_bank_redesign/shared/app_colors.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';
import 'package:players_bank_redesign/widgets/text_field_widget.dart';
import '../../widgets/go_back_button.dart';
import 'nickname_page.dart';
import 'package:country_state_picker/country_state_picker.dart';

const continueButton = 'CONTINUAR';
const documentTitle = 'CADASTRO';

class UserDataPage extends StatefulWidget {
  const UserDataPage({super.key});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  String? state;
  String? country;

  @override
  Widget build(BuildContext context) {
    Widget nickNamePage = const NickNamePage();
    bool showLabel = false;
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
                CountryStatePicker(
                  stateLabel: Visibility(
                    visible: showLabel,
                    child: Label(
                      title: '',
                    ),
                  ),
                  countryLabel: Visibility(
                    visible: showLabel,
                    child: Label(
                      title: '',
                    ),
                  ),
                  dropdownColor: AppColors.grey,
                  inputDecoration: const InputDecoration(
                    hintStyle: kEditTextStyle,
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                    isCollapsed: true,
                  ),
                  itemTextStyle: kEditTextStyle,
                  hintTextStyle: kEditTextStyle,
                  onCountryChanged: (ct) => setState(() {
                    country = ct;
                    state = null;
                  }),
                  onStateChanged: (st) => setState(() {
                    state = st;
                  }),
                ),
                const SizedBox(height: sizedBoxHeightMin),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainButtonStyle(
                  buttonText: continueButton,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nickNamePage),
                  ),
                  nextPage: const NickNamePage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
