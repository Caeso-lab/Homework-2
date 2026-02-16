import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
                      child: Icon(Icons.arrow_back, color: Colors.black, size: 0.1*width,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.settings, color: Colors.black, size: 0.1*width,),
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
                      size: 0.4*width,),
                      ElevatedButton(onPressed: () =>{} , 
                      child: Row(
                        children: [
                          Text('Edit profile', style: TextStyle(
                            fontSize: 0.03*width, fontWeight: FontWeight.bold),),
                          SizedBox(width:0.015*width ,),
                          Icon(Icons.edit,),
                        ],
                      ),
                      
                      )
                    ],
                  ),
                  SizedBox(width: 0.02*width,),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text('Profile name', style: TextStyle(
                            fontSize: 0.05*width, fontWeight: FontWeight.bold
                          ),),
                          Text('Smaller bio', style: TextStyle(
                            color: Colors.blueAccent, fontSize: 0.04*width,
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: 0.04*height,
                      ),
          
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Friends', style: TextStyle(
                                fontSize: 0.05*width, fontWeight: FontWeight.bold, color: Colors.black
                              ),),
                              Text('136', style: TextStyle(
                                color: Colors.blueAccent, fontSize: 0.04*width, 
                              ),),
                            ],
                          ),
                          SizedBox(width: 0.02*width,),
                          Container(
                            color: Colors.blue,
                            width: 2,
                            height: 0.03*height,
          
                          ),
                          SizedBox(width: 0.02*width,),
                          Column(
                            children: [
                              Text('Following',style: TextStyle(
                                fontSize: 0.05*width, fontWeight: FontWeight.bold, color: Colors.black)),
                              Text('136', style: TextStyle(
                                color: Colors.blueAccent, fontSize: 0.04*width,)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
          
              SizedBox(height: 0.03*height),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Activity', style: TextStyle(
                      fontSize: 14, color: Colors.blueAccent
                    ),),
                  ),
                  SizedBox(width: 0.01*width),
                  Icon(Icons.trending_up, color: Colors.deepPurple),
                ],
              ),
          
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: ()=>{},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Icon(Icons.image),
                            Text('Images', style: TextStyle(color: Colors.black, 
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
              ),
              SizedBox(height: 0.01*height,),
              
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[350]
                          ),
                          height: 0.27*width,
                          width: 0.27*width,
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
