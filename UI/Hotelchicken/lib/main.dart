import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Container(
            height: 380,
            width: double.infinity,
            // color: Colors.red,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Chicken Banner
                  Container(
                    height: 380,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQguWOeT3KDFM5215nEXGtd452Wr8XUAsrNQA&s"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(105))),
                  ),
                  // 3 Chciken
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5rkL0MFT5Jx4mWoxCdjUM4pqf_iou_oEJGQ&s"),
                      buildCircleAvatar(
                          "data:image/jpeg;base64,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"),
                      buildCircleAvatar(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMb2E0iVTFrUKW6i-K8CePJSR2BJw2bSrew&s")
                    ],
                  )
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          //Chciken Names
          Text("Juicy Roasted Chicken",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "                  Cooking someone a roasted chicken is like saying “I love you” in delectable food form.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic)),
          ),
          //Other Details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 70,
                width: 100,
                child: Center(
                  child: Text(
                    "₹. 250",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                height: 70,
                width: 100,
                child: Center(
                  child: Text(
                    "1 + 1",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                height: 70,
                width: 100,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "+5 ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15)),
              )
            ],
          )
        ]),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(img) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 45,
      child: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 42,
      ),
    );
  }
}
