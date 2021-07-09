import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_shop/config/constants.dart';
import 'package:my_shop/config/palette.dart';
import 'package:my_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:my_shop/widget/form_error.dart';
import '/widget/default_btn.dart';
import '/widget/custom_suffix_icon.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool _remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailFormField(),
          const SizedBox(height: 30),
          _buildPasswordFormField(),
          const SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                  value: _remember,
                  activeColor: Palette.kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      _remember = value!;
                    });
                  }),
              Text('Remember me'),
              Spacer(),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, ForgotPasswordScreen.routName),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          const SizedBox(height: 20),
          DefaultButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppConstents.kEmailNullError)) {
          setState(() => errors.add(AppConstents.kEmailNullError));
        }
        if (!AppConstents.emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(AppConstents.kInvalidEmailError)) {
          setState(() => errors.add(AppConstents.kInvalidEmailError));
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppConstents.kEmailNullError)) {
          setState(() => errors.remove(AppConstents.kEmailNullError));
        }
        if (AppConstents.emailValidatorRegExp.hasMatch(value) &&
            errors.contains(AppConstents.kInvalidEmailError)) {
          setState(() => errors.remove(AppConstents.kInvalidEmailError));
        }
      },
      onSaved: (newValue) => email = newValue!,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }

  TextFormField _buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppConstents.kPassNullError)) {
          setState(() => errors.add(AppConstents.kPassNullError));
        }
        if (value.length < 8 &&
            !errors.contains(AppConstents.kShortPassError)) {
          setState(() => errors.add(AppConstents.kShortPassError));
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AppConstents.kPassNullError)) {
          setState(() => errors.remove(AppConstents.kPassNullError));
        }
        if (value.length >= 8 &&
            errors.contains(AppConstents.kShortPassError)) {
          setState(() => errors.remove(AppConstents.kShortPassError));
        }
      },
      onSaved: (newValue) => password = newValue!,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }
}
