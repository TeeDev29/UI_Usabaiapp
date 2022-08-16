import 'package:flutter/material.dart';
import 'package:usabai2/home/views/home.dart';
import 'package:usabai2/login/service/logo_service.dart';
import 'package:usabai2/login/views/loginpage.dart';

class Sphash extends StatefulWidget {
  Sphash({Key? key}) : super(key: key);

  @override
  State<Sphash> createState() => _SphashState();
}

class _SphashState extends State<Sphash> {
  @override

   void initState(){
    super.initState();
    _navigatortohome();
  }
   _navigatortohome() async {
     await Future.delayed(const Duration(milliseconds: 1500),(){});
     Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: ((context) =>  Login())));
   }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                // child: Image(image: AssetImage("assets/logousabai.png"),width: 120,height: 120,),
                child: Container(
                  width: 120,
                  height: 120,
                  child: LogoApp(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("chokviwat property".toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    SizedBox(height: 10,),
                    Text("Munchkin 1.0",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                  ],
                ),
                
              )
            ],
          ),
        )
        );
  }
}
