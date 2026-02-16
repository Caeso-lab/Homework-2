import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
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
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
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
                    children: [
                      PostCard(),
                      SizedBox(height: 20),
                      PostCard(),
                    ],
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
  final IconData icon;
  final String text;
  final bool isSelected;

  FilterButton({
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
        children: [Icon(icon,
            color: isSelected ? Colors.white : Colors.black,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
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
            child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        ),

        SizedBox(height: 10),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                ),
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