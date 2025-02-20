import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_palette.dart';

class AuthInputField extends StatefulWidget {
  final String hintText;
  final String prefixIconPath;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscure;
  const AuthInputField({
    super.key,
    required this.hintText,
    required this.prefixIconPath,
    required this.controller,
    this.keyboardType,
    this.isObscure,
  });

  @override
  State<AuthInputField> createState() => _AuthInputFieldState();
}

class _AuthInputFieldState extends State<AuthInputField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppPalette.blackFogTransparent,
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        obscureText: widget.isObscure ?? false,
        decoration: InputDecoration(
          fillColor: AppPalette.lightSteelBlueTransparent,
          filled: true,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: context.textStyles.bodyLarge.copyWith(fontSize: 12),
          prefixIcon: Image.asset(
            widget.prefixIconPath,
            width: 20,
            height: 20,
          ),
          suffixIcon: widget.isObscure == null
              ? null
              : showPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        Icons.visibility_off,
                        color: AppPalette.mutedBlue,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        Icons.visibility,
                        color: AppPalette.mutedBlue,
                      ),
                    ),
        ),
      ),
    );
  }
}
