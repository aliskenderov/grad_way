import 'package:flutter/material.dart';
import '../../utilities/constants/app_styles.dart';

class TextFieldWidget extends StatefulWidget {
  bool? isTrue = false;
  IconData iconData;
  IconData? icon;
  String text;
  TextEditingController controller;
  TextFieldWidget(
      {super.key,
      required this.iconData,
      required this.text,
      required this.controller,
      this.isTrue,
      this.icon});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isTrue!,
            cursorColor: AppColors.color,
            decoration: InputDecoration(
              suffixIcon: widget.isTrue!
                  ? IconButton(
                      color: AppColors.color,
                      onPressed: () {
                        setState(() {
                          if (widget.isTrue!) {
                            widget.isTrue = false;
                          } else {
                            widget.isTrue = true;
                          }
                        });
                      },
                      icon: Icon(
                        widget.icon,
                        color: AppColors.color,
                      ))
                  : Text(''),
              prefixIcon: Icon(
                widget.iconData,
                color: AppColors.blueColor,
              ),
              fillColor: AppColors.whiteColor,
              filled: true,
              hintText: widget.text,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide:
                      BorderSide(color: AppColors.blueColor, width: 1.2)),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(color: AppColors.blueColor, width: 1.2),
              ),
            ),
          ),
        ));
  }
}
