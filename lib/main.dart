import 'package:flutter/material.dart';
import 'profile.dart'; // Import halaman ProfilePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk mengambil data dari text field
  final TextEditingController nameController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  // Fungsi untuk register
  void register() {
    String name = nameController.text;
    String role = roleController.text;
    String school = schoolController.text;
    String description = descriptionController.text;

    // Validasi sederhana
    if (name.isEmpty || role.isEmpty || school.isEmpty || description.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Nama, Role, Nama Sekolah atau Deskripsi tidak boleh kosong"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    } else {
      // Setelah register berhasil, navigasi ke halaman profil
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            name: name,
            role: role,
            school: school,
            description: description,
          ), // Mengirimkan data ke ProfilePage
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/user.png'), // Ganti dengan path gambar Anda
            ),
            SizedBox(height: 16),
            Text(
              "Selamat Datang!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Form register untuk nama
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Form register untuk role
            TextField(
              controller: roleController,
              decoration: InputDecoration(
                labelText: "Role",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Form register untuk nama sekolah
            TextField(
              controller: schoolController,
              decoration: InputDecoration(
                labelText: "Nama Sekolah",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Form register untuk deskripsi
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: "Deskripsi Pengguna",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: register,
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
