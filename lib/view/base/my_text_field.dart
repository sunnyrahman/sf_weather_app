import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../util/dimensions.dart';
import '../../util/styles.dart';

class MyTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool isPassword;
  final Function? onChanged;
  final Function? onSubmit;
  final bool isEnabled;
  final bool isRequired;
  final int maxLines;
  final TextCapitalization capitalization;
  final String? prefixIcon;
  final bool divider;
  final bool isPadding ;
  final int minLines;


  MyTextField(
      {
        this.hintText = '',
        required this.controller,
        required this.focusNode,
        this.minLines = 1,
        this.nextFocus,
        this.isEnabled = true,
        this.inputType = TextInputType.text,
        this.inputAction = TextInputAction.next,
        this.maxLines = 1,
        this.isRequired=false,
        this.onSubmit,
        this.onChanged,
        this.prefixIcon,
        this.capitalization = TextCapitalization.none,
        this.isPassword = false,
        this.divider = false,
        this.isPadding = false,

        required this.title,
      }
      );

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<MyTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        SizedBox(height: 4),
        Container(
          child: TextField(
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            controller: widget.controller,
            focusNode: widget.focusNode,
            style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),
            textInputAction: widget.inputAction,
            keyboardType: widget.inputType,
            cursorColor: Theme.of(context).primaryColor,
            textCapitalization: widget.capitalization,
            enabled: widget.isEnabled,
            autofocus: false,
            obscureText: widget.isPassword ? _obscureText : false,
            inputFormatters: widget.inputType == TextInputType.phone ? <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp('[0-9]'))] : null,
            decoration: InputDecoration(
              // alignLabelWithHint: true,
              contentPadding: widget.isPadding?EdgeInsets.only(top:16,bottom:16,left: 10):EdgeInsets.only(top:10,bottom:10,left: 5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
                borderSide: BorderSide(style: BorderStyle.none, width: 1),
              ),
              isDense: true,
              hintText: widget.hintText,
              fillColor: Theme.of(context).cardColor,
              hintStyle: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault, color: Theme.of(context).hintColor),
              filled: true,
              prefixIcon: widget.prefixIcon != null ?
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(widget.prefixIcon!, height: 10, width: 10,),
              ) : null,
              suffixIcon: widget.isPassword ? IconButton(
                icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility, color: Colors.black.withOpacity(0.6)),
                onPressed: _toggle,
              ) : null,
            ),
            onSubmitted: (text) => widget.nextFocus != null ? FocusScope.of(context).requestFocus(widget.nextFocus)
                : widget.onSubmit != null ? widget.onSubmit!(text) : null,
            onChanged:(text)=> widget.onChanged!=null?widget.onChanged!(text):widget.onChanged,
          ),
        ),
        widget.divider ? Padding(padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE), child: Divider()) : SizedBox(),
      ],
    );
  }
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
