
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mco/core/base/base_variable.dart';

class Texts {
  static const enter = 'Enter';
  static const please = 'Please';
  static const number = 'Number';
}

// ignore: must_be_immutable
class AppTextFormField extends StatefulWidget {
  TextEditingController? controller;
  FocusNode focusNode = FocusNode();
  String label;
  bool hasHint;
  TextInputType? textInputType;
  int? length;
  bool showLengthFail;
  FocusNode? nextFocusNode;
  TextDirection? textDirection;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool obscure;
  bool enable;
  GestureTapCallback? onTap;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onFieldSubmitted;
  ValueChanged<String>? onChanged;
  TextInputAction? textInputAction;
  int? maxLine;
  bool autoValidateMode;
  bool hasTitle;
  bool autoFocus;
  bool forceLtr;
  List<TextInputFormatter> inputFormatter;
  TextStyle? style;
  bool dispose;
  bool readOnly;

  AppTextFormField({
    Key? key,
    required this.label,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.textInputType,
    this.length,
    this.nextFocusNode,
    this.textDirection,
    this.suffixIcon,
    this.prefixIcon,
    this.enable = true,
    this.showLengthFail = true,
    this.obscure = false,
    this.onTap,
    this.maxLine,
    this.textInputAction,
    this.autoValidateMode = true,
    this.hasTitle = false,
    this.autoFocus = false,
    this.hasHint = true,
    this.forceLtr = false,
    this.inputFormatter = const [],
    this.style,
    this.controller,
    this.dispose = true,
    this.readOnly = false,
  }) : super(key: key) {
    controller ??= TextEditingController();
  }

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  void dispose() {
    if (widget.dispose) {
      widget.controller!.dispose();
      widget.focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Directionality(
          textDirection:
              widget.forceLtr ? TextDirection.ltr : TextDirection.rtl,
          child: TextFormField(
            readOnly: widget.readOnly,
            onTap: widget.onTap,
            style: widget.style,
            autofocus: widget.autoFocus,
            validator: widget.validator,
            onFieldSubmitted: widget.onFieldSubmitted ?? selfSubmit,
            controller: widget.controller,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            maxLength: widget.length,
            textDirection: widget.textDirection,
            enabled: widget.enable,
            maxLines: widget.maxLine,
            obscureText: widget.obscure,
            keyboardType: widget.textInputType ?? TextInputType.text,
            textCapitalization: TextCapitalization.none,
            enableInteractiveSelection: true,
            textInputAction: widget.textInputAction ??
                (widget.nextFocusNode != null
                    ? TextInputAction.next
                    : TextInputAction.done),
            autocorrect: false,
            autovalidateMode: widget.autoValidateMode
                ? AutovalidateMode.onUserInteraction
                : null,
            cursorColor: Theme.of(context).primaryColor,
            inputFormatters: (widget.textInputType == TextInputType.number ||
                widget.textInputType == TextInputType.phone
                ? <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    ...widget.inputFormatter,
                  ]
                : null),
            decoration: InputDecoration(
              counterText: "",
              labelText: widget.hasTitle ? null : widget.label,
              hintText: widget.hasHint
                  ? (widget.hasTitle ? widget.label : null)
                  : null,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.fromLTRB(8.0, 22.0, 8.0, 0.0),
              // labelStyle: const TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              disabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              ),
              errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Variable.colorVar.primaryColor),
              ),
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
            ),
          ),
        ),
      ],
    );
  }

  void selfSubmit(String value) {
    widget.focusNode.unfocus();
    if (widget.nextFocusNode != null) widget.nextFocusNode!.requestFocus();
  }
}
