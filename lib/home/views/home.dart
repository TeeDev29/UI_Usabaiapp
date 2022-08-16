import 'package:flutter/material.dart';
import 'package:usabai2/home/components/top_component.dart';
import 'package:usabai2/home/service/bgcard.dart';
import 'package:usabai2/home/widget/ads_img.dart';
import 'package:usabai2/home/widget/btn_menu.dart';
import 'package:usabai2/login/views/loginpage.dart';
import 'package:usabai2/referfriend/views/referfriend.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  Widget build(BuildContext context) {
    // Test();
  
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
    
        body: SafeArea(
            child: SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        verticalDirection: VerticalDirection.down,
        children: [
          const top_component(),
          Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(195, 236, 236, 236),
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 16.0, left: 27),
                        child: Text(
                          "MENU",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 137, 137, 137)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, right: 0),
                    child: Wrap(
                      spacing: 16.0,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const btn_menu(
                            namemenu: "Refer a friend",
                            iconmenu: Icons.person_add_alt_sharp,
                            // size: 30,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 124, 255, 59),
                                Color.fromARGB(255, 0, 26, 255),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            rouname: Referfriend()),
                        btn_menu(
                            namemenu: "Progress\nbuild a house",
                            iconmenu: Icons.align_vertical_bottom_sharp,
                            // size: 30,
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 70, 187),
                                Color.fromARGB(255, 255, 156, 36),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            rouname: Login()),
                        btn_menu(
                            namemenu: "Common fee",
                            iconmenu: Icons.widgets_rounded,
                            // size: 30,
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 203, 30),
                                Color.fromARGB(255, 255, 140, 0),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            rouname: Login()),
                        btn_menu(
                            namemenu: "Water bill",
                            iconmenu: Icons.water_drop,
                            // size: 30,
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 38, 49, 255),
                                Color.fromARGB(255, 191, 199, 255),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            rouname: Login()),
                        btn_menu(
                            namemenu: "House\nreservation list",
                            iconmenu: Icons.view_list,
                            // size: 30,
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 46, 171),
                                Color.fromARGB(255, 149, 255, 29),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            rouname: Login()),
                        btn_menu(
                            namemenu: "Service",
                            iconmenu: Icons.home_repair_service,
                            // size: 30,
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 157, 59),
                                Colors.purple,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            rouname: Login()),
                           
                      ],
                    ),
                  ),
                ],
              )),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, left: 16),
                    child: Text(
                      "PROMOTION",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 137, 137, 137)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 4.5,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,

                  children: const <Widget>[
                    Ads_widget(),
                    Ads_widget(),
                    Ads_widget()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}
