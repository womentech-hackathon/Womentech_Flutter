import 'package:flutter/material.dart';

class RenderTextFormField extends StatelessWidget {
  final controller;
  final String label;
  final FormFieldSetter onSaved;
  final FormFieldValidator validator;

  const RenderTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.onSaved,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: label,
          ),
          onSaved: onSaved,
          validator: validator,
        ),
      ],
    );
  }
}
