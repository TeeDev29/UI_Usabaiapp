import 'package:flutter/material.dart';

class Referfriend extends StatefulWidget {
  const Referfriend({Key? key}) : super(key: key);

  @override
  State<Referfriend> createState() => _ReferfriendState();
}

class _ReferfriendState extends State<Referfriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Refer a friend"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text("Friend invitation of",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Text("Mr. " "CHATCHAWAN",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("Money commission \nyours",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Text("2000" " THB",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 129, 185, 24)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Your friend invite code :",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Text("ASkc123998inwza",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 5),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 129, 185, 24),
                      Color.fromARGB(255, 0, 53, 102),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Enter friend invite code",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    //  controller: numphone,
                                    decoration: const InputDecoration(
                                        // hintText: "xxx-xxx-xxxx",
                                        // border: InputBorder.none,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Confirm",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                // height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 235, 235),
                      blurRadius: 10,
                      offset: Offset(1, 1), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0 , left: 16 , right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 143, 143, 143)),
                          ),
                          Text(
                            "Status",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 143, 143, 143)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  border:  Border(
                                      bottom: BorderSide(
                                color: Color.fromARGB(255, 212, 212, 212),
                                width: 2.0,
                              ))),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom:8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Chaitawat",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 0, 37, 200),
                                            borderRadius: BorderRadius.circular(2)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            "book a house",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                    Color.fromARGB(255, 255, 255, 255),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  border:  Border(
                                      bottom: BorderSide(
                                color: Color.fromARGB(255, 212, 212, 212),
                                width: 2.0,
                              ))),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom:8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Chaitawat",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 0, 37, 200),
                                            borderRadius: BorderRadius.circular(2)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            "book a house",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                    Color.fromARGB(255, 255, 255, 255),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      

                      
                      
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
