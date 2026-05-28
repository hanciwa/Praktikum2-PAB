import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              // FOTO PROFIL
              const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/foto3.jpg'),
              ),

              const SizedBox(height: 20),

              // NAMA
              const Text(
                'Rachmat Prihanto',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // NIM
              const Text(
                '1462300078',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // CARD INFO
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),

                child: Column(
                  children: const [

                    ListTile(
                      leading: Icon(Icons.person, color: Colors.blue),
                      title: Text('PAB 2026'),
                    ),
                    
                    Divider(),

                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.green),
                      title: Text('0895418590500'),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text('rachmat.ihan@gmail.com'),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.red),
                      title: Text('Jln. tambakgringsing baru'),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(Icons.person_4_outlined, color: Colors.blue),
                      title: Text('Instagram'),
                      subtitle: Text('rachmthan_'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}