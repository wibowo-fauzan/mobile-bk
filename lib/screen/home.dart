import 'package:flutter/material.dart';
import 'package:flutter_application_bimbingankonseling_ammar/add/form.dart';
import 'package:flutter_application_bimbingankonseling_ammar/screen/about.dart';
import 'package:flutter_application_bimbingankonseling_ammar/screen/profile.dart';
import 'package:flutter_application_bimbingankonseling_ammar/user/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${now.day}-${now.month}-${now.year}";
    String formattedTime = "${now.hour}:${now.minute}";

    // Mendapatkan jam saat ini
    int currentHour = now.hour;
    int currentMinute = now.minute;

// Mengecek apakah waktu saat ini berada di antara jam 06:00 dan 07:45
    // absen masuk
    bool logicabsenmasuk =
        currentHour == 6 && currentMinute >= 0 && currentHour < 8;
    // absen masuk end

    // absen terlambat
    bool logicabsenterlambat = currentHour >= 8 && currentHour < 16;
    // absen terlambat end

    // absen pulang
    bool logicabsenpulang =
        currentHour == 17 && currentMinute >= 0 && currentHour < 18;
    // absen pulang end

    return Scaffold(
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
      body: Column(
        children: [
          Card(
            color: Color.fromRGBO(40, 37, 47, 1),
            child: ListTile(
              title: Text(
                'Date: $formattedDate\nTime: $formattedTime',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                textAlign: TextAlign.center, // Correct position for textAlign
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 20,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'about students',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Card(
            color: Color.fromRGBO(40, 37, 47, 1),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/images/logs.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'NIK : 0066849592042',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Nama Siswa : Ammar Karim Akbar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Jenis Kelamin : Laki - Laki',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Number Phone : +62 877-4863-2717',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // absen masuk
                        SizedBox(
                          height: 10,
                        ),
                        if (logicabsenmasuk)
                          Text(
                            'Absen Masuk: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        // absen pulang
                        if (logicabsenpulang)
                          Text(
                            'Absen Pulang: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        if (logicabsenmasuk)
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.blue, // Warna latar belakang tombol
                              onPrimary: Colors.white, // Warna teks tombol
                            ),
                            child: Text('Absen Masuk',
                                style: TextStyle(color: Colors.white)),
                          ),
                        if (logicabsenterlambat)
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.blue, // Warna latar belakang tombol
                              onPrimary: Colors.white, // Warna teks tombol
                            ),
                            child: Text('Absen Terlambat',
                                style: TextStyle(color: Colors.white)),
                          ),
                        if (logicabsenpulang)
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.blue, // Warna latar belakang tombol
                              onPrimary: Colors.white, // Warna teks tombol
                            ),
                            child: Text('Absen Pulang',
                                style: TextStyle(color: Colors.white)),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // app Bar
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
