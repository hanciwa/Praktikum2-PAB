import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Aktivitas 1"),
        backgroundColor: Colors.pink[300],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pink[100]!,
              Colors.pink[50]!,
              Colors.pink[100]!,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.pink[200]!,
                    Colors.pink[100]!,
                    Colors.pink[50]!,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Judul atas
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.w500,
                      color: Colors.pink[800],
                    ),
                  ),
                  Text(
                    "PRAKTIKUM PAB 2026",
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[800],
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 30),

                  // NBI dengan bubble background
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink[200]!,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      "1462300078",
                      style: TextStyle(
                        fontSize: 22, 
                        fontWeight: FontWeight.bold,
                        color: Colors.pink[800],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // Gambar dengan rasio 1:1 (Kotak sempurna)
                  Container(
                    width: 200,
                    height: 200, // Rasio 1:1 (200:200)
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink[200]!,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/foto2.jpeg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover, // Cover agar memenuhi kotak
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // Nama
                  Text(
                    "Ivana",
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[800],
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 40),

                  // Tombol Masuk
                  ElevatedButton(
                    onPressed: () {
                      print("Tombol ditekan");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Halo Ivana! Selamat datang 💕"),
                          backgroundColor: Colors.pink[300],
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[400],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                      shadowColor: Colors.pink[300],
                    ),
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 30), // Spacer bottom
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}