import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String name; // Nama pengguna
  final String role; // Role pengguna
  final String school; // Nama sekolah
  final String description; // Deskripsi pengguna

  const Page2({
    Key? key,
    required this.name,
    required this.role,
    required this.school,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpeg'), // Path ke gambar background
                fit: BoxFit.cover,
              ),
            ),
          ),
          // AppBar and body content
          Scaffold(
            backgroundColor: Colors.transparent, // Supaya background image terlihat
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text('Profile'),
              backgroundColor: Colors.transparent, // Membuat AppBar transparan
              elevation: 0, // Menghilangkan bayangan di bawah AppBar
            ),
            body: SingleChildScrollView(  // Agar halaman bisa di-scroll
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/user.png'),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        name, // Menampilkan nama dari input
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Agar teks terlihat di atas background
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        role, // Menampilkan role dari input
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[350],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),

                    // About Section
                    Card(
                      color: Colors.grey[250]?.withOpacity(0.8), // Mengatur transparansi kartu
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0), // Membuat sudut kartu lebih melengkung
                      ),
                      elevation: 4, // Menambah bayangan pada card
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "I am a student at $school majoring in PPLG.", // Menampilkan sekolah
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 8),
                            Text(
                              description, // Menampilkan deskripsi dari input
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // History Section
                    Card(
                      color: Colors.white.withOpacity(0.8), // Menambahkan transparansi pada card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 4, // Menambah bayangan pada card
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'History',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'I once interned at the company Mede Media Softika which operates in the technology sector. I gained quite valuable experience.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // Skills Section
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),  // Rounded corners
                      ),
                      elevation: 4,  // Optional: for shadow
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[450]?.withOpacity(0.8),  // Matching the header color with transparency
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              'Skills',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,  // Adjust text color if needed
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('HTML', style: TextStyle(fontSize: 16)),
                                SizedBox(height: 8),
                                Text('CSS', style: TextStyle(fontSize: 16)),
                                SizedBox(height: 8),
                                Text('C++', style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
