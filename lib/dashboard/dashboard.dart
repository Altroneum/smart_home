import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,


        onPressed: (){},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        child: Container(
          height: 50,
            width: 50,
            decoration: boxDecoration(radius: 25),
            child: Icon(Icons.mic)),

      ),
      appBar: PreferredSize(
        preferredSize: Size(double.maxFinite, 70),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0,right: 20),
          child: AppBar(
            leading: Icon(Icons.space_dashboard_rounded),
            actions: [
              Container(
                height: 40,
                width:40,

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.cyanAccent,
                      Colors.blueAccent,
                      Colors.purpleAccent
                    ]
                  ),
                  borderRadius: BorderRadius.circular(25),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network("https://shayariraja.com/wp-content/uploads/2023/08/Girl-dp-by-shayariraja-14-1-1024x1024.jpg"),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Suneel Kumar",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),),
                    Text("Welcome back to home",style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54
                    ),)
                  ],
                ),

                Container(
                  height: 35,
                  padding: EdgeInsets.only(left: 12,right: 12),
                  decoration:boxDecoration() ,
                  child:Row(
                    children: [
                      Text("Add Device",style: TextStyle(
                        color: Colors.white,
                      ),),
                      SizedBox(width: 8,),
                      Icon(Icons.add_circle_outline,color: Colors.white,size: 20,),

                    ],
                  ),
                )
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 24,bottom: 24),
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 4,
                    blurRadius: 10
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(
                    height: 50,
                    width: 50,
                    decoration: boxDecoration(radius: 25),
                    child: Center(
                      child: Icon(Icons.flash_on,color: Colors.white,size: 20,),
                    ),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("63.3 kWh",style: TextStyle(color: Colors.black,fontSize: 16),),
                      Text("Electricity usage this month",style: TextStyle(color: Colors.black54,fontSize: 12),),

                    ],
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Linked to you",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,fontSize: 20
                ),),
                Row(
                  children: [
                    Text("See all",style: TextStyle(fontSize: 12,color: Colors.black87),),
                    SizedBox(width: 12,),
                    Icon(Icons.arrow_forward,size: 16,)
                  ],
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Expanded(child: box()),
                SizedBox(width: 12,)
,                Expanded(child: box2()),
              ],
            ),
            SizedBox(height: 24,),
            Row(
              children: [
                Expanded(child: box3()),
                SizedBox(width: 12,)
,                Expanded(child: box4()),
              ],
            )


          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
        ],
      ),


    );
  }
}

BoxDecoration  boxDecoration({double radius=12}) => BoxDecoration(
  borderRadius: BorderRadius.circular(radius),
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors:[
      Colors.blueAccent,
      Colors.cyanAccent.shade700,
    ]

  )
);
BoxDecoration  whiteBoxDecoration({double radius=12}) => BoxDecoration(
  borderRadius: BorderRadius.circular(radius),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade100,
      spreadRadius: 6,blurRadius: 3
    )
  ]
);

Widget box() =>Container(
  padding: EdgeInsets.all(16),
decoration:boxDecoration() ,
  child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.air_outlined),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text("24",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),

            Text("\u00B0C",style: TextStyle(color: Colors.white,fontSize: 16),)
          ],
        )

      ],),
      SizedBox(height: 22,),
      Text("Working space",style: TextStyle(fontSize: 10),),

      Text("Air Conditioner",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
      Switch(
          activeTrackColor: Colors.black,
          value: true, onChanged: (c){})
    ],
  ),
);
Widget box2() =>Container(
  padding: EdgeInsets.all(16),
decoration:whiteBoxDecoration() ,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.volume_down,color: Colors.white,size: 30,),
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text("60",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                ),

                Text("%",style: TextStyle(color: Colors.black,fontSize: 16),)
              ],
            ),
            Text("Volume",style: TextStyle(fontSize: 10,color: Colors.grey),)
          ],
        )

      ],),
      SizedBox(height: 10,),
      Text("Working space",style: TextStyle(fontSize: 10,color: Colors.grey),),

      Text("Google Nest",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
      Switch(
          value: false, onChanged: (c){})
    ],
  ),
);
Widget box3() =>Container(
  padding: EdgeInsets.all(16),
decoration:whiteBoxDecoration() ,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.light,color: Colors.white,size: 30,),
        ),


      ],),
      SizedBox(height: 22,),
      Text("Working space",style: TextStyle(fontSize: 10,color: Colors.grey),),

      Text("Desk Lamp",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
      Switch(
          value: false, onChanged: (c){})
    ],
  ),
);
Widget box4() =>Container(
  padding: EdgeInsets.all(16),
decoration:whiteBoxDecoration() ,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.settings_remote,color: Colors.white,size: 30,),
        ),

          Column(
            children: [
              Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Text("Users",style: TextStyle(fontSize: 10,color: Colors.grey),)
            ],
          )


      ],),
      SizedBox(height: 10,),
      Text("Living room",style: TextStyle(fontSize: 10,color: Colors.grey),),

      Text("Mi Router 5",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
      Switch(
        activeTrackColor: Colors.black,
          value: true, onChanged: (c){})
    ],
  ),
);
