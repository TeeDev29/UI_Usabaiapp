import 'package:flutter/material.dart';

class Ads_widget extends StatelessWidget {
  const Ads_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0,right: 10),
      child: Container(
        width: 160,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5),
         color: Color.fromARGB(255, 238, 238, 238)
       ),    
      child: ClipRRect(
         borderRadius:
            BorderRadius.circular(5),
        child: const Image(
          image: AssetImage("assets/profile.png"),
          fit: BoxFit.fill,
        ),
      ),
      ),
    );
  }
}