import 'package:flutter/material.dart';

import '../../util/dimensions.dart';
import '../../util/styles.dart';

class CustomRealDropDownWithTitle extends StatelessWidget {
  final List<String> dataArray;
  final String title;
  final String hint;
  final double height;
  final bool isIgnore;
  final bool isRequired;
  final String? seletcedValue;
  final Function? selecetTap;

  const CustomRealDropDownWithTitle(
      {Key? key,
      required this.dataArray,
      required this.title,
      required this.hint,
      this.isRequired=false,
      this.height = 40,
      this.selecetTap,
      this.seletcedValue,
      this.isIgnore = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          child: isRequired?Text.rich(
            TextSpan(
              children: [
                TextSpan(text: title,style: robotoMedium.copyWith(fontSize:Dimensions.fontSizeDefault)),
                const TextSpan(
                  text: '*',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                ),
              ],
            ),
          ):Text(title,textAlign:TextAlign.left,style: robotoMedium.copyWith(fontSize:Dimensions.fontSizeDefault),)
          ,),
   /*     Text(
          title,
          style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeDefault),
        ),*/
        const SizedBox(height: 4),
        Container(
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
        ),
      ],
    );
  }
}
