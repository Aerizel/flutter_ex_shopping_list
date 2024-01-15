import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ข้อมูลส่วนตัว",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  "assets/images/peter_family_guy.jpg",
                  width: 320,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 380,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person, size: 40),
                        title: const Text(
                          "Peter Griffin",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        subtitle: Text(
                          "ชื่อ-สกุล",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        contentPadding: const EdgeInsets.only(left: 10),
                      ),
                      ListTile(
                        leading: const Icon(Icons.home, size: 40),
                        title: const Text(
                          "234 ตำบลแวงน่าง อำเภอเมือง จังหวัดมหาสารคาม",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        subtitle: Text(
                          "ที่อยู่",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        contentPadding: const EdgeInsets.only(left: 10),
                      ),
                      ListTile(
                        leading: const Icon(Icons.phone, size: 40),
                        title: const Text(
                          "0744819394",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        subtitle: Text(
                          "เบอร์โทร",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        contentPadding: const EdgeInsets.only(left: 10),
                      ),
                      ListTile(
                        leading: const Icon(Icons.email, size: 40),
                        title: const Text(
                          "familyguy@gmail.com",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        subtitle: Text(
                          "อีเมล",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        contentPadding: const EdgeInsets.only(left: 10),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const ListTile(
                    leading: Icon(Icons.question_mark_rounded, size: 40,),
                    title: Text(
                      "ศูนย์ช่วยเหลือ",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, size: 30,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,30,0,80),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                    ),
                    child: const Text(
                      "ออกจากระบบ",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
