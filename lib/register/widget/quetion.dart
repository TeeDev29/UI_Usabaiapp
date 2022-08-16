import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final String que;
  const question({
    required this.que,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))
      ),
      child:  Padding(
        padding:  EdgeInsets.all(8.0),
        child: Text( que ,style: TextStyle(color: Colors.white,fontSize: 14),),
      ),
    );
  }
}