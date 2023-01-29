import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    dynamic data=ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xffCCDDE7),
                  borderRadius: BorderRadius.circular(35)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 25),
                  Image.asset("assets/images/ns.jpg",width: 200,height: 200),
                  Text("Congrats!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  Text("You win",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10,),
                  Text("Rs. $data",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (data==500000)?Container():InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.pushReplacementNamed(context, '/');
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff242A40),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text("Quit",style: TextStyle(fontSize: 30,color: Color(0xffCCDDE7),)),
                        ),
                      ),
                      (data==500000)?Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.pushReplacementNamed(context, '/');
                              });
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff242A40),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Text("Restart",style: TextStyle(fontSize: 30,color: Color(0xffCCDDE7),)),
                            ),
                          ),
                        ),
                      ):InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: 120,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff242A40),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text("Next",style: TextStyle(fontSize: 30,color: Color(0xffCCDDE7),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}