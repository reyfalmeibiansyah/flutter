import 'package:flutter/material.dart';
import 'page2.dart'; // Pastikan Anda sudah membuat Page2

class ProfilePage extends StatelessWidget {
  final String name; // Menyimpan nama pengguna
  final String role; // Menyimpan role pengguna
  final String school; // Menyimpan nama sekolah
  final String description; // Menyimpan deskripsi pengguna

  ProfilePage({required this.name, required this.role, required this.school, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"), // Ganti dengan path gambar background
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.85, // Mengatur lebar card
              height: MediaQuery.of(context).size.height * 0.60, // Mengatur tinggi card
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Membuat sudut card lebih melengkung
                ),
                elevation: 10, // Menambahkan bayangan untuk tampilan lebih menarik
                color: Color.fromRGBO(112, 112, 112, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('assets/images/user.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black), // Memperbesar ukuran font
                      ),
                      SizedBox(height: 5),
                      Text(
                        role,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.grey[450]), // Memperbesar ukuran font
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Vocational High School Student at $school",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[450]),
                      ),
                      SizedBox(height: 10), // Spasi antara bagian sekolah dan deskripsi
                      Text(
                        "Deskripsi: $description",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey[450]),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, // Warna latar belakang tombol
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Padding tombol
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page2(
                                name: name,
                                role: role,
                                school: school,
                                description: description,
                              ), // Mengirimkan data ke Page2
                            ),
                          );
                        },
                        child: Text(
                          'See More',
                          style: TextStyle(color: Colors.white), // Warna teks tombol
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
