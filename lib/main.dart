import 'package:flutter/material.dart';

void main() {
  // This widget is the root of your application.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(16),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Search profiles, subjects and images",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FilterButton(
                        icon: Icons.public,
                        text: "Global",
                        isSelected: false,
                      ),
                      SizedBox(width: 10),
                      FilterButton(
                        icon: Icons.people,
                        text: "Followers",
                        isSelected: true,
                      ),
                      SizedBox(width: 10),
                      FilterButton(
                        icon: Icons.wb_sunny,
                        text: "Nature",
                        isSelected: false,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Expanded(
                  child: ListView(
                    children: [PostCard(), SizedBox(height: 20), PostCard()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  //const FilterButton({super.key,});
  final IconData icon;
  final String text;
  final bool isSelected;

  const FilterButton({
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Icon(icon, color: isSelected ? Colors.white : Colors.black),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ),
        ),

        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 20, backgroundColor: Colors.grey[300]),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Text("xx/yy/zzzz"),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

// runApp(const SecondScreen());
//}

//class SecondScreen extends StatelessWidget {
//  const SecondScreen({super.key});

//title: 'Second Page(Profiles)',

//    home: ProfileScreen(),
//    );
//  }
//}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                borderRadius: BorderRadius.circular(25),
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
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.black,
                            size: 30,
                          ),
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
                            Icon(Icons.account_circle_rounded, size: 120),
                            ElevatedButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Edit profile',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.edit),
                                ],
                              ),
                            ),
                          ],
                        ),
                       // SizedBox(width: 20),
                        Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Profile name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Smaller bio',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),

                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Friends',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '136',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Container(
                                  color: Colors.blue,
                                  width: 2,
                                  height: 10,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text(
                                      'Following',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '136',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Activity',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueAccent,
                          ),
                        ),
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
                          ElevatedButton(
                            onPressed: () => {},

                            child: Row(
                              children: [
                                Icon(Icons.image),
                                Text(
                                  'Images',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => {},

                            child: Row(
                              children: [
                                Icon(Icons.play_circle_outline_outlined),
                                Text(
                                  'Videos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => {},

                            child: Row(
                              children: [
                                Icon(Icons.favorite_border),
                                Text(
                                  'Liked',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[350],
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
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[350],
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
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[350],
                              ),
                              height: 100,
                              width: 100,
                            ),
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
      ),
    );
  }
}
