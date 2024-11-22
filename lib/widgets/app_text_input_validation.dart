import 'package:flutter/material.dart';

class AppInputWithValidation extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const AppInputWithValidation(
      {this.hintText = 'Enter text',
      this.validator,
      this.controller,
      super.key});

  @override
  State<AppInputWithValidation> createState() => _AppInputWithValidationState();
}

class _AppInputWithValidationState extends State<AppInputWithValidation> {
  bool _isValid = false;

  void _validateInput(String text) {
    setState(() {
      _isValid = widget.validator?.call(text) == null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: _validateInput,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: Icon(
          _isValid ? Icons.check : Icons.error_outline,
          color: _isValid ? Colors.green : Colors.red,
        ),
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 14,
        ),
        filled: true,
        // fillColor: const Color(0xFFF2F3F7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
