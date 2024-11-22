import 'package:flutter/material.dart';

class AppAgreePrivacyPolicy extends StatefulWidget {
  const AppAgreePrivacyPolicy({super.key});

  @override
  State<AppAgreePrivacyPolicy> createState() => _AppAgreePrivacyPolicyState();
}

class _AppAgreePrivacyPolicyState extends State<AppAgreePrivacyPolicy> {
  bool _isChecked = false;

  void _toggleCheckbox(bool? newValue) {
    setState(() {
      _isChecked = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: 'i have read the ',
            style: Theme.of(context).textTheme.titleSmall,
            children: const <TextSpan>[
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7583CA),
                ),
              ),
            ],
          ),
        ),
        Checkbox(value: _isChecked, onChanged: _toggleCheckbox)
      ],
    );
  }
}
