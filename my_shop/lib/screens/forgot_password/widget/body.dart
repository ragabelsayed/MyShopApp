import 'package:flutter/material.dart';
import '/config/constants.dart';
import '/config/size.dart';
import '/widget/custom_suffix_icon.dart';
import '/widget/default_btn.dart';
import '/widget/form_error.dart';
import '/widget/no_account_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.getProportionateScreentWidth(28),
                  ),
                ),
                Text(
                  'Please enter your email and we will send \n you a link to return your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                ForgotForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotForm extends StatefulWidget {
  @override
  _ForgotFormState createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty &&
                  !errors.contains(AppConstents.kEmailNullError)) {
                setState(() => errors.add(AppConstents.kEmailNullError));
              }
              if (!AppConstents.emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(AppConstents.kInvalidEmailError)) {
                setState(() => errors.add(AppConstents.kInvalidEmailError));
              }
            },
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains(AppConstents.kEmailNullError)) {
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
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
