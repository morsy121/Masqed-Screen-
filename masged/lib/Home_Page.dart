import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final GestureForcePressEndCallback? forcepressed;

  int currentIndex = 0;
  int currentIndex1 = 0;
  int currentIndex2 = 0;

  List Taspeh = [
    "سبحان الله",
    "الحمد لله",
    "الله واكبر",
  ];

  //get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff843609),
        elevation: 0,
        title: Text(
          "فذكر ان نفعت الذكري ",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/images/photo.png",
          ),
          fit: BoxFit.cover,
        )),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "${Taspeh[currentIndex1]}",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "عدد التسبيحات",
                style: TextStyle(color: Color(0xff843609), fontSize: 22),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "$currentIndex",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              setState(() {
                currentIndex++;
                if (currentIndex == 33) {
                  if (currentIndex1 == 2) {
                    currentIndex1 = 0;
                    currentIndex = 0;
                    Taspeh[currentIndex1];
                    currentIndex2++;
                  } else {
                    setState(() {
                      currentIndex = 0;
                      currentIndex1++;
                    });
                  }
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 3)),
              child: Padding(
                padding: const EdgeInsets.all(23),
                child: Text(
                  "اضغط",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                      currentIndex1 = 0;
                      currentIndex2 = 0;
                    });
                  },
                  child: Text(
                    "البدء من جديد ",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Spacer(),
                Text(
                  "الدورة رقم : $currentIndex2",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
