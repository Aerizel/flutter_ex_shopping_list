import 'package:flutter/material.dart';
import 'item.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [const Item(), const Profile()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Item();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/playstation_icon.png",
              width: 55,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "PlayStation",
                style: TextStyle(fontSize: 10,color: Colors.grey),
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: currentTab == 0 ?const Color(0xFF00439C) : Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Item();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "หน้าหลัก",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: currentTab == 1 ?const Color(0xFF00439C) : Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        minWidth: 80,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Profile();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.person_sharp,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "ข้อมูลส่วนตัว",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
