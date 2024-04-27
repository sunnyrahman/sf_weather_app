import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../util/dimensions.dart';
import '../../util/styles.dart';

class CustomTextFieldMaterial extends StatefulWidget {

  // final String title;
  final bool isRequired;
  final String hintText;
  final String lebelText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool isPassword;
  final Function? onChanged;
  final Function onSubmit;
  final bool isEnabled;
  final int maxLines;
  final TextCapitalization capitalization;
  final String? prefixIcon;
  final bool divider;
  final double height;

  const CustomTextFieldMaterial({super.key,

    // required this.title,
    this.isRequired=false,
    this.hintText = 'Write something...',
    required this.controller,
    required this.focusNode,
    required this.nextFocus,
    this.isEnabled = true,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.maxLines = 1,
    required this.onSubmit,
    this.onChanged,
    this.prefixIcon,
    this.capitalization = TextCapitalization.none,
    this.isPassword = false,
    this.divider = false,
    required this.lebelText,
    this.height = 40,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldMaterial> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      /*  Container(
          child: widget.isRequired?Text.rich(
            TextSpan(
              children: [
                TextSpan(text: widget.title,style: robotoMedium.copyWith(fontSize:Dimensions.fontSizeDefault)),
                TextSpan(
                  text: '*',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                ),

              ],
            ),
          ):Text(widget.title,textAlign:TextAlign.left,style: robotoMedium.copyWith(fontSize:Dimensions.fontSizeDefault),),),
        SizedBox(height: 8),*/
        TextField(
          maxLines: widget.maxLines,
          controller: widget.controller,
          focusNode: widget.focusNode,
          style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeLarge),
          textInputAction: widget.inputAction,
          keyboardType: widget.inputType,
          cursorColor: Theme.of(context).primaryColor,
          textCapitalization: widget.capitalization,
          enabled: widget.isEnabled,
          autofocus: false,
          obscureText: widget.isPassword ? _obscureText : false,
          inputFormatters: widget.inputType == TextInputType.phone
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ]
              : null,
          decoration: InputDecoration(

            focusedBorder:  const OutlineInputBorder(

              borderSide:  BorderSide(color: Color(0xff707070),width: 0.9 ),

            ),
              enabledBorder: const OutlineInputBorder(
                // width: 0.0 produces a thin "hairline" border
                borderSide: BorderSide(color: Color(0xff707070), width: 0.0),
              ),
            border: const OutlineInputBorder(

            ),
            labelText:widget.lebelText ,
            /*border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
              borderSide: BorderSide(style: BorderStyle.none, width: 0),
            ),*/
            labelStyle: robotoRegular.copyWith(
                fontSize: Dimensions.fontSizeDefault,
                // color: Colors.grey
              color: Theme.of(context).primaryColor
            ),
            isDense: true,
            hintText: widget.hintText,
            fillColor: Theme.of(context).cardColor,
            hintStyle: robotoRegular.copyWith(
                fontSize: Dimensions.fontSizeLarge,
                color: Theme.of(context).hintColor),
            filled: true,
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.PADDING_SIZE_SMALL),
                    child:
                        Image.asset(widget.prefixIcon!, height: 20, width: 20),
                  )
                : null,
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).hintColor),
                    onPressed: _toggle,
                  )
                : null,
          ),
          onSubmitted: (text) => widget.nextFocus != null
              ? FocusScope.of(context).requestFocus(widget.nextFocus)
              // ignore: unnecessary_null_comparison
              : widget.onSubmit != null
                  ? widget.onSubmit(text)
                  : null,
          onChanged:(text)=> widget.onChanged!=null?widget.onChanged!(text):widget.onChanged,
        ),
        widget.divider ? const Padding(padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE), child: Divider()) : const SizedBox(),

      ],
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
