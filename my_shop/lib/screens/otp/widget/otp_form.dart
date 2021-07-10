import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/config/constants.dart';
import '/config/size.dart';
import '/widget/default_btn.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final _formKey = GlobalKey<FormState>();
  late FocusNode _pin2FocusNode;
  late FocusNode _pin3FocusNode;
  late FocusNode _pin4FocusNode;
  late String code1;
  late String code2;
  late String code3;
  late String code4;
  @override
  void initState() {
    super.initState();
    _pin2FocusNode = FocusNode();
    _pin3FocusNode = FocusNode();
    _pin4FocusNode = FocusNode();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      // focusNode.requestFocus();
      focusNode.nextFocus();
    }
  }

  @override
  void dispose() {
    _pin2FocusNode.dispose();
    _pin3FocusNode.dispose();
    _pin4FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: SizeConfig.getProportionateScreentWidth(60),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  style: TextStyle(fontSize: 24),
                  decoration: AppConstents.otpInputDecoration,
                  onChanged: (value) =>
                      nextField(value: value, focusNode: _pin2FocusNode),
                  onSaved: (newValue) => code1 = newValue!,
                ),
              ),
              SizedBox(
                width: SizeConfig.getProportionateScreentWidth(60),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  focusNode: _pin2FocusNode,
                  style: TextStyle(fontSize: 24),
                  decoration: AppConstents.otpInputDecoration,
                  onChanged: (value) =>
                      nextField(value: value, focusNode: _pin3FocusNode),
                  onSaved: (newValue) => code2 = newValue!,
                ),
              ),
              SizedBox(
                width: SizeConfig.getProportionateScreentWidth(60),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  focusNode: _pin3FocusNode,
                  style: TextStyle(fontSize: 24),
                  decoration: AppConstents.otpInputDecoration,
                  onChanged: (value) => _pin4FocusNode.nextFocus(),
                  onSaved: (newValue) => code3 = newValue!,
                ),
              ),
              SizedBox(
                width: SizeConfig.getProportionateScreentWidth(60),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  focusNode: _pin4FocusNode,
                  style: TextStyle(fontSize: 24),
                  decoration: AppConstents.otpInputDecoration,
                  onChanged: (value) => _pin4FocusNode.unfocus(),
                  onSaved: (newValue) => code4 = newValue!,
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: 'Continue',
            onPressed: () {
              // if (_formKey.currentState!.validate()) {
              // _formKey.currentState!.save();

              // }
            },
          ),
        ],
      ),
    );
  }
}
