import 'package:camp_yellow_assignment/unreadMessages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool seeMore1 = false;
  bool seeMore2 = false;
  bool seeMore3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.amber),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outlined,
              color: Colors.amber,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts_sharp, color: Colors.amber),
              label: ' '),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 370,
            color: Colors.amber,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset('images/17350.jpg'),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\n Clan name: Lorem Ipsum',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Rale',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\n 28 member, 5 online',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Rale',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
          ),
          WhiteLine,
          columnTitle('     Achievement'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  pinkText('Current league'),
                  Image.asset(
                    'images/shi.png',
                    scale: 20,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  pinkText('League Ranking'),
                  Text(
                    '11th',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  pinkText('Experince        '),
                  Text(
                    '2000 xp',
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  pinkText('# of wins                         '),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ),
                ],
              ),
            ],
          ),
          WhiteLine,
          columnTitle('      Past featured performances'),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PriyaBlock('Priya in International\nDebating League    '),
              SizedBox(
                height: 30,
              ),
              PriyaBlock('Akshay in Global       \nQuizzing Finals     '),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      seeMore1 = !seeMore1;
                    });
                  },
                  child: Text(
                    seeMore1 ? 'Nothing to show\n   click to hide' : 'see more',
                    style: TextStyle(color: Colors.amber),
                  )),
            ],
          ),
          WhiteLine,
          columnTitle('      Live clan activities on platform\n'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(alignment: Alignment.center, children: [
                Image.asset(
                  'images/download.jpg',
                  scale: 0.8,
                ),
                Text(
                  '  Live trading  \nchampionship',
                  style: TextStyle(fontSize: 25),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Stack(alignment: Alignment.center, children: [
                Image.asset(
                  'images/download.jpg',
                  scale: 0.8,
                ),
                Text(
                  'Treasure Hunt',
                  style: TextStyle(fontSize: 25),
                ),
              ]),
              TextButton(
                  onPressed: () {
                    setState(() {
                      seeMore2 = !seeMore2;
                    });
                  },
                  child: Text(
                    seeMore2 ? 'Nothing to show\n   click to hide' : 'see more',
                    style: TextStyle(color: Colors.amber),
                  )),
            ],
          ),
          WhiteLine,
          columnTitle('      Clan discussions\n'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                pinkText(' General thread:'),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GeneralThread();
                      }));
                    },
                    child: Hero(
                      tag: 'mes',
                      child: Text(
                        '15 unread messages',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                pinkText(' (live) Anyone enthu for trading   league...'),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GeneralThread2();
                      }));
                    },
                    child: Hero(
                      tag: 'mes2',
                      child: Text(
                        '10 unread messages',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
                Center(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          seeMore1 = !seeMore1;
                        });
                      },
                      child: Text(
                        seeMore1
                            ? 'Nothing to show\n   click to hide'
                            : 'see more',
                        style: TextStyle(color: Colors.amber),
                      )),
                ),
                WhiteLine,
                columnTitle('Clan Members\n'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            'images/boy1.jpg',
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        pinkText(' Lorem ipsum - Clan head'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            'images/boy2.gif',
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        pinkText('Lorem ipsum - Debating'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
