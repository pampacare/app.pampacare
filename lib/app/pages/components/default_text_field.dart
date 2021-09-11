import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pampacare/app/shared/theme/app_colors.dart';

class DefaultTextField extends StatefulWidget {
  final String? hint;
  final String? icon;
  final void Function(String)? onChanged;
  const DefaultTextField({Key? key, this.hint, this.icon, this.onChanged})
      : super(key: key);

  @override
  _DefaultTextFieldState createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.textField,
      ),
      child: TextFormField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(color: AppColors.hintText, fontSize: 18),
          contentPadding: EdgeInsets.all(20),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 24,
            //maxWidth: 24
          ),
          prefixIcon: widget.icon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 17),
                  child: SvgPicture.asset(
                    widget.icon!,
                    fit: BoxFit.fitHeight,
                  ),
                )
              : null,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
