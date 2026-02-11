import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Second Page(Profiles)',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.arrow_back, color: Colors.black, size: 40,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.settings, color: Colors.black, size: 40,),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Icon(Icons.account_circle_rounded,
                      size: 200,),
                      ElevatedButton(onPressed: () =>{} , 
                      child: Row(
                        children: [
                          Text('Edit profile', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),),
                          SizedBox(width:10 ,),
                          Icon(Icons.edit),
                        ],
                      ),
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text('Profile name', style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold
                          ),),
                          Text('Smaller bio', style: TextStyle(
                            color: Colors.blueAccent, fontSize: 16
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
          
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Friends', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black
                              ),),
                              Text('136', style: TextStyle(
                                color: Colors.blueAccent, fontSize: 16, 
                              ),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Container(
                            color: Colors.blue,
                            width: 2,
                            height: 30,
          
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text('Following',style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                              Text('136', style: TextStyle(
                                color: Colors.blueAccent, fontSize: 16,)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
          
              SizedBox(height: 30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Activity', style: TextStyle(
                      fontSize: 14, color: Colors.blueAccent
                    ),),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.trending_up, color: Colors.deepPurple),
                ],
              ),
          
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: ()=>{},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.image),
                          Text('Images', style: TextStyle(color: Colors.white, 
                          fontSize: 16, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    ),
                    ElevatedButton(onPressed: ()=>{},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.play_circle_outline_outlined),
                          Text('Videos', style: TextStyle(color: Colors.black, 
                          fontSize: 16, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    ),
                    ElevatedButton(onPressed: ()=>{},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text('Liked', style: TextStyle(color: Colors.black, 
                          fontSize: 16, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              
              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
