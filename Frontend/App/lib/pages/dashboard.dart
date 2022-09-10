import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/signup.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ]),
        drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Card(
                  child: Center(
                    child: Text(
                      "Glance2Pay",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: Colors.green),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.account_circle_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              leading: Icon(Icons.logout_outlined),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ));
              },
            ),
          ],
        )),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Text("Current Trip",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green)),
              ),
              SizedBox(
                height: 15,
              ),
              LinearPercentIndicator(
                //leaner progress bar
                animation: true,
                animationDuration: 1000,
                lineHeight: 20.0,
                percent: 10 / 100,
                center: Text(
                  10.toString() + "%",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green[400],
                backgroundColor: Colors.grey[300],
              ),
              Text(
                "Current occupancy: 56%",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                "Recent Trips",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Flexible(
                child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      Card(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.corporate_fare_rounded),
                              Center(child: Text("Amazon Toronto"))
                            ]),
                      ),
                      Card(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.local_hospital),
                              Center(child: Text("Hospital"))
                            ]),
                      ),
                      Card(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.train_rounded),
                              Center(child: Text("Train Station"))
                            ]),
                      ),
                      Card(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.beach_access),
                              Center(child: Text("Beach"))
                            ]),
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
