import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:zaman_group_app/Constants/ColorConstants.dart';
import 'package:zaman_group_app/Constants/TextFieldConstants.dart';
import 'package:zaman_group_app/Constants/TextStyleConstants.dart';
import 'package:zaman_group_app/GlobalWidgets/RoundedButton.dart';
import 'package:zaman_group_app/Helper/Language.dart';
import 'package:zaman_group_app/Providers/AppSettingsProvider.dart';
import 'package:zaman_group_app/Providers/AuthenticationProvider.dart';

class LoginTab extends StatefulWidget {
  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final _formKey = GlobalKey<FormState>();

  void _onSave(BuildContext context) {
    if (!_formKey.currentState.validate()) return;

    // _formKey.currentState.save();
    Provider.of<AuthenticationProvider>(context, listen: false).setLoginTrue();
    Provider.of<AppSettingsProvider>(context, listen: false).setLoginTab(0);

    // showAlertBar(context);
  }

  @override
  Widget build(BuildContext context) {
    final words = Provider.of<Language>(context).words;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  words['login'],
                  style: AppTextStyle.boldTitle22.copyWith(
                    color: PaletteColors.mainAppColor,
                  ),
                ),
              ),
              SizedBox(height: 30),
              IntlPhoneField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words['phone-number'],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                initialCountryCode: 'IQ',
                autoValidate: false,
                onChanged: (value) {
                  // print(value.completeNumber);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return words["input-phone"];
                  } else if (value.length != 11) {
                    return words["fail-number"];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words['password'],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return words['input-phone'];
                  } else if (value.length < 8) {
                    return words['password-is-short'];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              RoundedButton(
                title: words['login'],
                onPressed: () => _onSave(context),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 4),
                leading: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                title: Text(words["remind-me"]),
                trailing: GestureDetector(
                  child: Text(
                    words["forget-password"],
                    style:
                        AppTextStyle.regularTitle16.copyWith(color: Colors.red),
                  ),
                ),
              ),
              RoundedButton(
                title: words["otp"],
                onPressed: () {},
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 2, child: Divider(thickness: 2)),
                  Flexible(flex: 1, child: Text(words["or"])),
                  Flexible(flex: 2, child: Divider(thickness: 2)),
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text(words["create-account"],
                    style: AppTextStyle.boldTitle22),
              ),
              SizedBox(height: 20),
              RoundedButton(
                title: words["signup"],
                backgroundColor: Color(0xfff0f0f0),
                width: 100,
                textColor: Colors.black87,
                onPressed: () {
                  Provider.of<AppSettingsProvider>(context, listen: false)
                      .setLoginTab(1);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
