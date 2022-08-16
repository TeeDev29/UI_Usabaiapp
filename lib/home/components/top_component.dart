import 'package:flutter/material.dart';


class top_component extends StatelessWidget {
  const top_component({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Stack(
      // alignment: AlignmentDirectional.topCenter,
      children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: height / 3.2,
      child: const Image(
        image: AssetImage('assets/bgcard.png'),
        fit: BoxFit.fill,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "U sabai".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(0, 224, 224, 224),
                    border: Border.all(
                        width: 2.0, color: const Color(0xFFFFFFFF)),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text("Mr.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("chatchawan".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 26.0),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Balance",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    const Center(
                      child: Text(
                        "1000",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            "THB",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //Accumulated Points
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: 140,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Accumulated Points",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      const Center(
                        child: Text(
                          "1000",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Image(
                                image: AssetImage("assets/pointusabai.png"),
                                width: 15,
                                height: 15,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(36, 233, 233, 233),
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                      blurRadius: 10.0,
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
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.qr_code_scanner_outlined,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 28.0,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Scan QR code",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add_card_outlined,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 28.0,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Top up money",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Image(
                                width: 28,
                                height: 28,
                                image: AssetImage('assets/pointusabai.png'),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Exchange Point",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
    //===================================end top components===============================//
      ],
    );
  }
}
