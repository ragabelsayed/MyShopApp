import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  final List<String> errors;

  const FormError({
    required this.errors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => _formErrorText(
          error: errors[index],
        ),
      ),
    );
  }

  Row _formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: 15,
          width: 15,
        ),
        const SizedBox(width: 10),
        Text(error)
      ],
    );
  }
}
