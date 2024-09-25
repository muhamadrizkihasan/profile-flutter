import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgound.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 16),
                Text(
                  'Muhamad Rizki Hasan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  color: Colors.blue[200],
                  child: ListTile(
                    title: Text(
                      'About',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Nama saya Muhamad Rizki Hasan, seorang siswa di SMK Wikrama Bogor dengan jurusan Pengembangan Perangkat Lunak dan Gim (PPLG). Saya memiliki minat yang besar dalam dunia teknologi dan akan terus belajar untuk menjadi seorang developer yang ahli.',
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  color: Colors.blue[50],
                  child: ListTile(
                    title: Text(
                      'History',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saya memulai di dunia teknologi saat pertama kali belajar pemrograman di SMK Wikrama Bogor. Sejak saat itu, saya telah mengembangkan berbagai proyek berbasis web menggunakan PHP dan Laravel.',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Saya pernah mengikuti berbagai pelatihan dan lomba di bidang teknologi untuk terus meningkatkan kemampuan saya sebagai seorang developer.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  color: Colors.blue[200],
                  child: ListTile(
                    title: Text(
                      'Skill',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PHP'),
                        Text('Javascript'),
                        Text('Dart'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
