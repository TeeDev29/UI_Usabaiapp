import 'package:flutter/material.dart';
import 'package:usabai2/login/views/loginpage.dart';
import 'package:usabai2/register/widget/quetion.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color.fromARGB(255, 208, 27, 87),
                        Color.fromARGB(255, 14, 19, 110),
                      ],
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 35, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login();
                              }));
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 16.0),
                              child: Icon(Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white, size: 24),
                            ),
                          ),
                          const Text(
                            "Let's Start \nRegister now !",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: const [
                            question(
                              que: "What is your name?",
                            ),
                            // question(
                            //   namequestions: "What is your name?",
                            // ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          //  controller: numphone,
                                          decoration: const InputDecoration(
                                            hintText: "Please enter your Name",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: const [
                            question(
                              que: "Your email?",
                            ),
                            // question(
                            //   namequestions: "Your email?",
                            // ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(height: 10),
                           Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          //  controller: numphone,
                                          decoration: const InputDecoration(
                                            hintText: "Please enter your email",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: const [
                            question(
                              que: "Your phone number?",
                            ),
                            // question(
                            //   namequestions: "Your phone number?",
                            // ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(height: 10),
                           Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          //  controller: numphone,
                                          decoration: const InputDecoration(
                                            hintText: "xxx-xxx-xxxx",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: const [
                            question(
                              que: "Set your password?",
                            ),
                            // question(
                            //   namequestions: "Set your password?",
                            // ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(height: 10),
                           Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          //  controller: numphone,
                                          decoration: const InputDecoration(
                                            hintText: "Please enter your password",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(height: 10),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          //  controller: numphone,
                                          decoration: const InputDecoration(
                                            hintText: "Please enter your password again",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 97, 196, 10),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Padding(
                              padding:  EdgeInsets.all(16.0),
                              child: Text(
                                "Finish",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
