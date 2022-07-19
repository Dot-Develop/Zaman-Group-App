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

class SignUpTab extends StatefulWidget {
  @override
  _SignUpTabState createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  final _formKey = GlobalKey<FormState>();

  void _onSave(BuildContext context) {
    if (!_formKey.currentState.validate()) return;

    // _formKey.currentState.save();

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
                  words["signup"],
                  style: AppTextStyle.boldTitle24
                      .copyWith(color: PaletteColors.mainAppColor),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words["first-name"],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return words["empty"];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words["last-name"],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return words["empty"];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words["email"],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return words["empty"];
                  } else if (!value.contains('@')) {
                    return words["forgot"];
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              IntlPhoneField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words["phone-number"],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                initialCountryCode: 'IQ',
                autoValidate: false,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return words["empty"];
                  } else if (value.length != 11) {
                    return words["fail-number"];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: words["password"],
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return words["empty"];
                  } else if (value.length < 8) {
                    return words['password-is-short'];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: words["occupation"],
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: TextFieldConstant.enabledBorder,
                  focusedBorder: TextFieldConstant.focusedBorder,
                  errorBorder: TextFieldConstant.errorBorder,
                ),
                items: [
                  DropdownMenuItem(
                      child: Text(words["not-selected"]), value: '1'),
                  DropdownMenuItem(child: Text(words["buyer"]), value: '2'),
                  DropdownMenuItem(child: Text(words["printing"]), value: '3'),
                  DropdownMenuItem(child: Text(words["designer"]), value: '4'),
                  DropdownMenuItem(
                      child: Text(words["sale-person"]), value: '5'),
                ],
                onChanged: (value) {},
                validator: (value) {
                  print(value);
                  if (value == null) {
                    return words["select-option"];
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              RoundedButton(
                title: words["signup"],
                onPressed: () {
                  // Provider.of<AuthenticationProvider>(context, listen: false)
                  //     .setLoginTrue();
                  // Provider.of<AppSettingsProvider>(context, listen: false)
                  //     .setLoginTab(0);
                  _onSave(context);
                },
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
                child: Text(
                  words["already-have-account"],
                  style: AppTextStyle.boldTitle24,
                ),
              ),
              SizedBox(height: 20),
              RoundedButton(
                title: words["login"],
                backgroundColor: Color(0xfff0f0f0),
                textColor: Colors.black87,
                width: 100,
                onPressed: () {
                  Provider.of<AppSettingsProvider>(context, listen: false)
                      .setLoginTab(0);
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
