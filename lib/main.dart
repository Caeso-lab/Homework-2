import 'package:flutter/material.dart';

void main() {
  runApp(const SecondScreen());
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Second Page(Profiles)',
    
      home: ProfileScreen(),
    );
  }
}


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

          child: SafeArea(
            child: Center(
              child: Container(
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.arrow_back, color: Colors.black, size: 20,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.settings, color: Colors.black, size: 20,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.account_circle_rounded,
                              size: 120,),
                              ElevatedButton(onPressed: () =>{} , 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Edit profile', style: TextStyle(fontWeight: FontWeight.bold),),
                                  Icon(Icons.edit,),
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
                                    fontSize: 18, fontWeight: FontWeight.bold
                                  ),),
                                  Text('Smaller bio', style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 16,
                                  ),)
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                                      
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Friends', style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
                                      ),),
                                      Text('136', style: TextStyle(
                                        color: Colors.blueAccent, fontSize: 16, 
                                      ),),
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    color: Colors.blue,
                                    width: 2,
                                    height: 10,
                                      
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Text('Following',style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
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
                    ),
                
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Activity', style: TextStyle(
                            fontSize: 16, color: Colors.blueAccent
                          ),),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.trending_up, color: Colors.deepPurple),
                      ],
                    ),
                
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(onPressed: ()=>{},
                            
                              child: Row(
                                children: [
                                  Icon(Icons.image
                                  ),
                                  Text('Images', style: TextStyle(color: Colors.black, 
                                  fontWeight: FontWeight.bold),)
                                ],
                            ),
                            ),
                            ElevatedButton(onPressed: ()=>{},
                            
                              child: Row(
                                children: [
                                  Icon(Icons.play_circle_outline_outlined),
                                  Text('Videos', style: TextStyle(color: Colors.black, 
                                  fontWeight: FontWeight.bold),)
                                ],
                            ),
                            ),
                            ElevatedButton(onPressed: ()=>{},

                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border),
                                  Text('Liked', style: TextStyle(color: Colors.black, 
                                  fontWeight: FontWeight.bold),)
                                ],
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   // SizedBox(height: 10,),
                    
                    Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[350]
                                ),
                                height: 100,
                                width: 100,
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
          ),
        ),
    );
  }
}