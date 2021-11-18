import 'package:flutter/material.dart';

class InformationTextWidget extends StatelessWidget {
  const InformationTextWidget({
    Key? key,
    required this.info,
    required this.value,
  }) : super(key: key);
  final String info;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
         Text(info,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: Colors.grey),),
         const SizedBox(height: 7,),
         Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
      ],
    );
  }
}