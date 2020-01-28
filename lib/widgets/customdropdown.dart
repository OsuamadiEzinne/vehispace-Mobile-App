import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  CustomDropdown(
      {this.hintText: 'Enter Value',
      this.isExpanded: true,
      this.isDense: false,
      @required this.value,
      this.icon,
      @required this.onChnaged,
      @required this.items,
//      @required this.DMchild,
//      @required this.DMvalue
      });
  final String hintText;
  final bool isExpanded;
  final bool isDense;
  final dynamic value;
  final Icon icon;
  final Function onChnaged;
  final List<dynamic> items;
//  final dynamic DMvalue;
//  final dynamic DMchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButton(
        hint: Text(hintText),
        isDense: isDense,
        isExpanded: isExpanded,
        value: value,
        onChanged: onChnaged,
        items: items.map<DropdownMenuItem>((dynamic value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          );
        }).toList(),
      ),
    );
  }
}
