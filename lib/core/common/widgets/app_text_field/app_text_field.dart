import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      required this.textInputType,
      required this.textCapitalization,
      required this.label,
      required this.hintText,
      required this.validator,
      this.isPassword = false});

  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final String label, hintText;
  final String Function(String?) validator;
  final bool isPassword;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _show = false;

  void _onTap() {
    setState(() {
      _show = !_show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.none,
      textCapitalization: TextCapitalization.none,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      obscureText: _show,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: _onTap,
                  icon: _show
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              )
            : null,
        labelStyle: const TextStyle(fontSize: 20, color: Colors.white),
        prefixStyle: const TextStyle(fontSize: 20, color: Colors.white),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
