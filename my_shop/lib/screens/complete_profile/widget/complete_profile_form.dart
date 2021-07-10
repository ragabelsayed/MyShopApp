import 'package:flutter/material.dart';
import '/screens/otp/otp_screen.dart';
import '/config/constants.dart';
import '/widget/custom_suffix_icon.dart';
import '/widget/default_btn.dart';
import '/widget/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String fristName;
  late String lastName;
  late String phoneNumber;
  late String address;

  void addError({required String error}) {
    setState(() => errors.add(error));
  }

  void removeError({required String error}) {
    setState(() => errors.remove(error));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildFirstNameFormField(),
          const SizedBox(height: 30),
          _buildLastNameFormField(),
          const SizedBox(height: 30),
          _buildPhoneNumberFormField(),
          const SizedBox(height: 30),
          _buildAddressFormField(),
          FormError(errors: errors),
          const SizedBox(height: 40),
          DefaultButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Go to OTP Screen
                Navigator.pushNamed(context, OTPScreen.routName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _buildFirstNameFormField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppConstents.kNamelNullError);
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppConstents.kNamelNullError);
        }
      },
      onSaved: (newValue) => fristName = newValue!,
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField _buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField _buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppConstents.kPhoneNumberNullError);
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppConstents.kPhoneNumberNullError);
        }
      },
      onSaved: (newValue) => phoneNumber = newValue!,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
    );
  }

  TextFormField _buildAddressFormField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppConstents.kAddressNullError);
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppConstents.kAddressNullError);
        }
      },
      onSaved: (newValue) => address = newValue!,
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
    );
  }
}
