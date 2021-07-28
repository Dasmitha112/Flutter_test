import 'dart:ui';
//import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 75.0,
          backgroundColor: Colors.white,
          leading: CircleAvatar(
            radius: 200,
            backgroundImage: AssetImage('assets/profilePic.png'),
          ),
          title: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome back, Marvin',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your financial situation is looking good!',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.grey,
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.deepOrange[400],
            tabs: [
              Tab(
                  child: Text(
                'Today',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Monthly',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Yearly',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                'Future',
                style: TextStyle(color: Colors.black),
              )),
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TabBarView(
              children: [
                ListView(children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue[400],
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.chat_bubble),
                            title: const Text(
                              'Small stuff adds up!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ),
                          ),
                          //Text(DateFormat("yyyy-MM-dd").format(DateTime.now())),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                child: Text('SETUP A GOAL'),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                padding: EdgeInsets.only(left: 150.0),
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.teal[300],
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.chat_bubble),
                            title: const Text(
                              'You\'re doing well \n paying off your loans',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Since this time last year, you\'ve contributed \$5.678 toward your Sallie Mae Student Loan. Great work!',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                child: Text('SETUP A GOAL'),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                padding: EdgeInsets.only(left: 150.0),
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.indigo,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.chat_bubble),
                            title: const Text(
                              'Small stuff adds up!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                child: Text('SETUP A GOAL'),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                padding: EdgeInsets.only(left: 150.0),
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.pink[200],
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.chat_bubble),
                            title: const Text(
                              'Small stuff adds up!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                              ),
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                child: Text('SETUP A GOAL'),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                padding: EdgeInsets.only(left: 150.0),
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
                ListView(children: [
                  Text('Monthly tab bar view'),
                ]),
                ListView(children: [
                  Text('Yearly tab bar view'),
                ]),
                ListView(children: [
                  Text('Future tab bar view'),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
