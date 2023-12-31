import 'package:country_state_picker/components/index.dart';
import 'package:country_state_picker/country_state_picker.dart';
import 'package:flutter/material.dart';
import 'package:players_bank_redesign/login/sign_up/user_profession_page.dart';
import 'package:players_bank_redesign/shared/constants.dart';
import 'package:players_bank_redesign/widgets/main_button.dart';
import 'package:players_bank_redesign/widgets/text_field_widget.dart';
import '../../shared/app_colors.dart';
import '../../widgets/go_back_button.dart';

const continueButton = 'CONTINUAR';
const documentTitle = 'Cadastro';

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
    Widget userProfessionPage = const UserProfessionPage();
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
                  countryHintText: 'País',
                  stateHintText: 'Estado',
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
                    contentPadding: EdgeInsets.all(10.0),
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
                  divider: const SizedBox(height: sizedBoxHeightMin),
                  onCountryChanged: (ct) => setState(() {
                    country = ct;
                    state = null;
                  }),
                  onStateChanged: (st) => setState(() {
                    state = st;
                  }),
                ),
                const SizedBox(height: sizedBoxHeight),
              ],
            ),
            const SizedBox(height: sizedBoxHeightMin),
            Row(
              children: [
                Expanded(
                  child: MainButtonStyle(
                    buttonText: continueButton,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => userProfessionPage),
                    ),
                    nextPage: UserProfessionPage(),
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
