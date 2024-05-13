import 'package:flutter/material.dart';
import 'package:money_tracking/pages/edit_profile.dart';
import 'package:money_tracking/pages/register.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Pengaturan> {
  final TextEditingController _usernameController =
      TextEditingController(text: 'Agung');
  final TextEditingController _emailController =
      TextEditingController(text: 'agung.prasetya@student.undiksha.ac.id');
  final TextEditingController _passwordController =
      TextEditingController(text: '........');

  void _logout() {
    print('Logout');

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
      (route) => false,
    );
  }

  void _editProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditProfile()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengaturan',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _usernameController,
                enabled: false,
                decoration: InputDecoration(
                  labelText: 'Nama Pengguna',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                enabled: false,
                decoration: InputDecoration(
                  labelText: 'Alamat Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                enabled: false,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Keluar'),
                          content: Text('Apakah Anda yakin ingin keluar?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context)
                                  .pop(), // Kembali tanpa logout
                              child: Text(
                                'Tidak',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 136, 34),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Menutup dialog
                                _logout(); // Panggil metode logout
                              },
                              child: Text(
                                'Ya',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 135, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Color.fromARGB(
                          255, 135, 0, 0), // Mengatur warna ikon menjadi merah
                    ),
                    label: Text(
                      'Keluar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 135, 0, 0),
                      ), // Mengatur warna teks menjadi merah
                    ),
                  ),
                  Spacer(),
                  ElevatedButton.icon(
                    onPressed: _editProfile,
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black, // Mengatur warna ikon menjadi hitam
                    ),
                    label: Text(
                      'Edit Profil',
                      style: TextStyle(
                          color: Colors
                              .grey[800]), // Mengatur warna teks menjadi hitam
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
