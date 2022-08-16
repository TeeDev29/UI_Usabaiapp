import 'package:flutter/material.dart';

class btn_menu extends StatelessWidget {
    final String namemenu;
    final IconData iconmenu;
    final rouname;
    final Gradient gradient;
  const btn_menu({
    required this.rouname,
    required this.iconmenu,
    required this.namemenu,
    required this.gradient,
      Key? key})
       : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return rouname;
        }));
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 235, 235, 235),
                    blurRadius: 10,
                    offset: Offset(1, 1), // Shadow position
                  ),
                ],
              ),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  Rect rect = const Rect.fromLTRB(0, 0, 55, 55);
                  return gradient.createShader(rect);
                },
                child: SizedBox(
                  // width: size * 1.2,
                  // height: size * 1.2,
                  child: Icon(
                    size: 30,
                    iconmenu,
                    // size: size,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(namemenu,textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold ,))
          ],
        ),
      ),
    );
  }
}