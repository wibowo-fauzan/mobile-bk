import 'package:flutter/material.dart';
import 'package:flutter_application_bimbingankonseling_ammar/add/form.dart';
import 'package:flutter_application_bimbingankonseling_ammar/screen/about.dart';
import 'package:flutter_application_bimbingankonseling_ammar/screen/profile.dart';
import 'package:flutter_application_bimbingankonseling_ammar/user/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == "profile") {
                // Navigasi ke halaman Profile
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profilescreen()),
                );
              } else if (value == "logOut") {
                // Aksi ketika pilihan "Log Out" dipilih
                // Misalnya, navigasi ke halaman login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: "profile",
                child: Text("Profile"),
              ),
              PopupMenuItem<String>(
                value: "logOut",
                child: Text("Log Out"),
              ),
            ],
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormScreen()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        elevation: 0,
        shape: CircleBorder(),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: InkWell(
                onTap: () {
                  // Tambahkan aksi yang ingin Anda lakukan ketika item ditekan
                  // Misalnya, navigasi ke layar VisiMisiScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VisiMisiScreen()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.library_books,
                      color: Colors.white,
                    ),
                    Text(
                      "Visi Dan Misi",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
