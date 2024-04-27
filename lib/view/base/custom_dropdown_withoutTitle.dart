import 'package:flutter/material.dart';

import '../../util/dimensions.dart';
import '../../util/styles.dart';

class CustomRealDropDownWithOutTitle extends StatelessWidget {
  final List<String> dataArray;
  final String hint;
  final double height;
  final bool isIgnore;
  final bool isRequired;
  final String? seletcedValue;
  final Function? selecetTap;

  const CustomRealDropDownWithOutTitle(
      {Key? key,
      required this.dataArray,
      required this.hint,
      this.isRequired=false,
      this.height = 40,
      this.selecetTap,
      this.seletcedValue,
      this.isIgnore = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          border: Border.all(width: 1, color: Colors.black45),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: IgnorePointer(
          ignoring: isIgnore,
          child: DropdownButton<String>(
            // iconDisabledColor: iconColor,
            iconEnabledColor: Theme.of(context).primaryColor,
            isExpanded: true,
            underline: const SizedBox(),
            value: seletcedValue,
            elevation: 4,
            hint: Text(
              hint,
              style: robotoRegular.copyWith(
                  fontSize: Dimensions.fontSizeDefault,
                  color: Theme.of(context).hintColor),
            ),
            isDense: true,
            items: dataArray.map((String ds) {
              return DropdownMenuItem<String>(
                value: ds,
                child: Text(
                  ds,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }).toList(),
            onChanged: (value) =>
            selecetTap != null ? selecetTap!(value) : null,
          ),
        ),
      ),
    );
  }
}
