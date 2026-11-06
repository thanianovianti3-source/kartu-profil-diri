import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kartu Profil Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileCardScreen(),
    );
  }
}

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Profil Diri'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 1. Foto / Avatar
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.indigoAccent,
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 2. Nama Lengkap
                  const Text(
                    'Nama Kamu Di Sini',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // 3. Kelas
                  const Text(
                    'Kelas XI RPL',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(thickness: 1.5),
                  const SizedBox(height: 10),

                  // 4. Informasi Kontak (3 Informasi: Email, Telepon, Lokasi)
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Informasi Kontak',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  const ListTile(
                    dense: true,
                    leading: Icon(Icons.email, color: Colors.indigo),
                    title: Text('email.kamu@sekolah.sch.id'),
                  ),
                  const ListTile(
                    dense: true,
                    leading: Icon(Icons.phone, color: Colors.indigo),
                    title: Text('+62 812-3456-7890'),
                  ),
                  const ListTile(
                    dense: true,
                    leading: Icon(Icons.location_on, color: Colors.indigo),
                    title: Text('Bandung, Jawa Barat'),
                  ),

                  const SizedBox(height: 10),
                  const Divider(thickness: 1.5),
                  const SizedBox(height: 10),

                  // 5. Daftar Hobi
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hobi & Minat',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      HobiItem(icon: Icons.code, label: 'Coding'),
                      HobiItem(icon: Icons.sports_esports, label: 'Gaming'),
                      HobiItem(icon: Icons.book, label: 'Membaca'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget pendukung untuk menampilkan daftar hobi agar rapi
class HobiItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const HobiItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.indigo, size: 28),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}