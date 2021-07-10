import 'package:flutter/material.dart';
import 'package:my_shop/config/constants.dart';
import 'package:my_shop/widget/custom_suffix_icon.dart';
import 'package:my_shop/widget/default_btn.dart';
import 'package:my_shop/widget/form_error.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  // late String userName;
  late String email;
  late String password;
  late String confirmPassword;

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
          _buildConfPasswordFormField(),
          FormError(errors: errors),
          const SizedBox(height: 40),
          DefaultButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                // Navigator.pushNamed(context, LoginSuccessScreen.routName);
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
        } else if (!AppConstents.emailValidatorRegExp.hasMatch(value) &&
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
        } else if (value.length < 8 &&
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
        password = value;
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

  TextFormField _buildConfPasswordFormField() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        }
        if (password != confirmPassword) {
          setState(() {
            errors.add(AppConstents.kMatchPassError);
          });
        }
      },
      onChanged: (value) {
        if (password == confirmPassword) {
          setState(() => errors.remove(AppConstents.kMatchPassError));
        }
      },
      onSaved: (newValue) => confirmPassword = newValue!,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }
}
