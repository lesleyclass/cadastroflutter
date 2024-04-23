
import 'package:cadastroflutter/util.dart';
import 'package:flutter/material.dart';

Column formItem({
  required String text,
  String? labelText,
  bool applyBold = false,
  EdgeInsetsGeometry padding = const EdgeInsets.only(),
}) {
  List <Widget> children = <Widget>[
    Padding(
      padding: const EdgeInsets.only(),
      child: Align(
        alignment: Alignment.centerLeft,
        child:
        Padding(
          padding: padding,
          child: Text(
              text,
              style: textStyle(applyBold: applyBold)
          ),
        ),
      ),
    ),
  ];
  if (labelText != null) {
    children.add(
      Padding(
        padding: const EdgeInsets.only(),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: labelText,
              border: textFormFieldBorder,
            ),
          ),
        ),
      ),
    );
  }

  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    children: children,
  );
}