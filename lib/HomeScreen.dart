import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List qu = [
    "Which cricketer name is hitman?",
    "Howmany  match formats cricket?",
    "where is bhuj khlifa?",
    "which year india won t20 cup?",
    "who is india pm?",
    "Which state largest in india?",
    "Which day is independence day? ",
    "Who is current captain \nof Newzland cricket team?",
    "Who is world richest man?",
    "where is siliconvelly?"
  ];
  List an = [
    1,
    2,
    2,
    2,
    4,
    2,
    2,
    1,
    1,
    1,
  ];
  List a = [
    "R.sharma",
    "2",
    "pakistan",
    "2007",
    "Narendra modi",
    "goa",
    "26 january,1947",
    "Stave Smith",
    "Elon musk",
    "koria",
  ];
  List b = [
    "Virat kohli",
    "3",
    "dubai",
    "2011",
    "donald trump",
    "keral",
    "15 january,1947",
    "Aron finch",
    "Mukesh Ambani",
    "india",
   ];
  List c = [
    "ms dhoni",
    "4",
    "usa",
    "2013",
    "putin",
    "Rajasthan",
    "15 August,1947",
    "B.mccullam",
    "ratan tata",
    "japan",
  ];
  List d = [
    "kapil dev",
    "5",
    "russia",
    "1999",
    "king jong",
    "Gujarat",
    "15 january,1956",
    "k.Williamson",
    "rock",
    "america",
  ];
  List pr = [
    1000,
    5000,
    10000,
    20000,
    50000,
    75000,
    100000,
    125000,
    150000,
    500000,
  ];
  int i = 0;
  int w=0;
  List ua=[];
  List box=[0,0,0,0,0,0,0,0,0];
  int z=0;
  int x=0;
  int y=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text("Question",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                    Text(" ${ua.length+1}",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                    Text(" / ${qu.length}",style: TextStyle(color: Colors.white,fontSize: 25)),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(width: 24,height: 5,color: Colors.blue),
                  ),
                  Row(
                      children: ua.map((e) => Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(width: 20,height: 5,color: Colors.blue),
                      )).toList()
                  ),
                  Row(
                      children: box.asMap().entries.map((e) => Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(width: 20,height: 5,color: Colors.white),
                      )).toList()
                  ),
                ],
              ),
              SizedBox(height: 80),
              Center(
                  child: Box()
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("${qu[i]}",style: TextStyle(fontSize: 25,color: Colors.white)),
        ),
        SizedBox(height: 35),
        InkWell(
          onTap: () {
            setState(() {
              if(y==0||y==4||y==2||y==3)
              {
                y=1;
              }
              else
              {
                y=0;
              }
              z=1;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==1)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                    alignment: Alignment.center,
                    child: Text("A",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${a[i]}",style: TextStyle(fontSize: 22,color: (y==4)?Colors.black:Colors.black)),              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: (){
            setState(() {
              if(y==0||y==1||y==4||y==3)
              {
                y=2;
              }
              else
              {
                y=0;
              }
              z=2;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==2)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                    alignment: Alignment.center,
                    child: Text("B",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${b[i]}",style: TextStyle(fontSize: 22,color: (y==4)?Colors.black:Colors.black)),              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: (){
            setState(() {
              if(y==0||y==1||y==2||y==4)
              {
                y=3;
              }
              else
              {
                y=0;
              }
              z=3;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==3)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                    alignment: Alignment.center,
                    child: Text("C",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${c[i]}",style: TextStyle(fontSize: 22,color: (y==4)?Colors.black:Colors.black)),              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: (){
            setState(() {
              if(y==0||y==1||y==2||y==3)
              {
                y=4;
              }
              else
              {
                y=0;
              }
              z=4;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: (y==4)?Color(0xffE88331):Color(0xffCEDCE7),borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                    alignment: Alignment.center,
                    child: Text("D",style: TextStyle(color: Colors.white,fontSize: 30)),
                  ),
                ),
                Text("${d[i]}",style: TextStyle(fontSize: 22,color: (y==4)?Colors.black:Colors.black)),
              ],
            ),
          ),
        ),
        SizedBox(height: 100),
        Visibility(
          visible: (z!=0)?(qu.length==ua.length)?false:true :false,
          child: InkWell(
            onTap: (){
              setState(() {
                int c=10;
                y=0;
                if(i<qu.length)
                {
                  if(z==an[x])
                  {
                    print(c);
                    ua.add(z);
                    print(ua);
                    Navigator.pushNamed(context, 'Second',arguments: pr[x]);
                    for(c=9;c>=0;c--)
                    {
                      box.remove(c);
                    }
                  }
                  else
                  {
                    ua.add(0);
                    Navigator.pushReplacementNamed(context, 'Third',arguments: (pr[x]==0) ?0 :pr[x-1]);
                    ua.clear();
                  }
                  x++;
                }
                z=0;
              });
              i++;
            },
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
              child: Text("Next",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}