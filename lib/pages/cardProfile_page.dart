import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Center(
            child: Card(
              margin: EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/img/profile.jpeg'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Siti Aminah',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      width: 150.0,
                      child: Divider(
                        color: Colors.blue,
                      ),
                    ),
                    ProfileInfoCard(
                      icon: Icons.school,
                      label: 'Universitas Islam Kalimantan Arsyad Al-Banjari',
                    ),
                    ProfileInfoCard(
                      icon: Icons.phone,
                      label: '+62 822-1977-4116',
                    ),
                    ProfileInfoCard(
                      icon: Icons.home,
                      label: 'JL.Adhyaksa 6',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;

  ProfileInfoCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Source Sans Pro',
          fontSize: 20.0,
        ),
      ),
    );
  }
}
