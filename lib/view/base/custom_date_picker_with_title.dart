import 'package:flutter/material.dart';

import '../../util/dimensions.dart';
import '../../util/styles.dart';

class CustomDatePickerWithTitle extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String title;
  final double height;
  final Function onpressed;

  const CustomDatePickerWithTitle({
    Key? key,
    required this.controller,
    this.hint = 'date',
    required this.title,
    required this.onpressed,
    this.height = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeDefault),
        ),
        const SizedBox(height: 5),
        Container(
          height: height,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1, color: Colors.black45),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                /* child: Image.asset(
                    Images.calender,
                    color: Colors.grey,
                    height: 18,
                  ),*/
                child: Icon(Icons.calendar_month),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 8,
                child: TextField(
                  controller: controller,
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(6),
                    hintText: "Date",
                    isDense: true,
                  ),
                  style: robotoRegular.copyWith(
                      fontSize: Dimensions.fontSizeDefault),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onTap: () => onpressed(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
