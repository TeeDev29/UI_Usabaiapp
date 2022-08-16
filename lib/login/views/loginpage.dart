import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:usabai2/home/views/home.dart';
import 'package:usabai2/login/models/login_model.dart';
import 'package:usabai2/login/service/logo_service.dart';
import 'package:usabai2/referfriend/views/referfriend.dart';
import 'package:usabai2/register/views/register.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
     final formKey = GlobalKey<FormState>();
     Login_model Login_modelfrom = Login_model(numphone: '', password: '');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 75.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // ignore: avoid_unnecessary_containers
                        SizedBox(width: 120, height: 120, child: LogoApp()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Text(
                            "SING IN",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  // TEXT Formfild
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35.0, right: 35, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "your numphone",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(255, 162, 162, 162), width: 2.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextFormField(
                                        validator: RequiredValidator(
                                            errorText:
                                                "please enter a Numberphone"),
                                        keyboardType: TextInputType.number,
                                        //  controller: numphone,
                                        decoration: const InputDecoration(
                                          hintText: "xxx-xxx-xxxx",
                                          border: InputBorder.none,
                                        ),

                                        onSaved: (numphone) {
                                          Login_modelfrom.numphone =
                                              numphone.toString();
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "password",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(255, 162, 162, 162), width: 2.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextFormField(
                                        validator: RequiredValidator(
                                            errorText:
                                                "please enter a password"),
                                        keyboardType: TextInputType.text,
                                        // controller: password,
                                        obscureText: true, // off-on password
                                        obscuringCharacter: "*",
                                        decoration: const InputDecoration(
                                          hintText: "xxxxxxxx",
                                          border: InputBorder.none,
                                        ),

                                        onSaved: (password) {
                                          Login_modelfrom.password =
                                              password.toString();
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Forgot your password",
                                    ),
                                    const SizedBox(width: 5),
                                    Text("click here",
                                        style: TextStyle(
                                            color: Colors.blue[900],
                                            decoration:
                                                TextDecoration.underline))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 35.0, top: 35, right: 35),
                    child: Row(children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              // print(login_serviceform.numphone);
                              if (Login_modelfrom.numphone.length == 10 && Login_modelfrom.password != null) {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Home();
                              }));
                              }
                              print(Login_modelfrom.password);
                              formKey.currentState!.reset();
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 244, 67, 54),
                                  Color.fromARGB(255, 0, 53, 102),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("SING IN",
                                    style: TextStyle(color: Colors.white)),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 12,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "or login with account",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                           border: Border.all(
                                          color: Color.fromARGB(255, 227, 227, 227), width: 2.0),
                                      borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children:const [
                                    Image(image: AssetImage("assets/google.png"),height: 25,width: 25,),
                                    Padding(
                                      padding: EdgeInsets.only(left:8.0),
                                      child: Text("Google",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                    ),
                                ],
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left:16.0),
                         child: Container(
                          decoration: BoxDecoration(
                             border: Border.all(
                                            color: Color.fromARGB(255, 227, 227, 227), width: 2.0),
                                        borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:const [
                                      Image(image: AssetImage("assets/facebook.png"),height: 25,width: 25,),
                                      Padding(
                                        padding: EdgeInsets.only(left:8.0),
                                        child: Text("Facebook",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                      ),
                                  ],
                                ),
                              ),
                             
                            ],
                          ),
                      ),
                       )
                      // GestureDetector(
                      //   onTap: () {
                      //     print("Google");
                      //   },
                      //   child: const btn_login(
                      //     images: "images/google.png",
                      //     namebtn: "Google",
                      //   ),
                      // ),
                      // GestureDetector(
                      //     onTap: () {
                      //       print("Facebook");
                      //     },
                      //     child: const btn_login(
                      //       images: "images/facebook.png",
                      //       namebtn: "Facebook",
                      //     )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35.0, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("First Registration",
                            style: TextStyle(fontSize: 14)),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  Register();
                              }));
                            },
                            child: Text(
                              " Click here",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.pink[600]),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}