import 'package:flutter/material.dart';
import 'package:money_tracking/pages/formpemasukan.dart';
import 'package:money_tracking/pages/formpengeluaran.dart';

class Hutang extends StatefulWidget {
  const Hutang({super.key});

  @override
  State<Hutang> createState() => _HutangState();
}

class _HutangState extends State<Hutang> {
  void _onFloatingActionButtonPressed() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.black.withOpacity(0.3),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_downward,
                      color: Color.fromARGB(255, 135, 0, 0)),
                  title: Text('Menerima'),
                  onTap: () {
                    Navigator.pop(context); // Tutup modal
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormPemasukan()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_upward,
                      color: Color.fromARGB(255, 0, 136, 34)),
                  title: Text('Memberi'),
                  onTap: () {
                    Navigator.pop(context); // Tutup modal
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormPengeluaran()),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hutang', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          // Tidak menggunakan SafeArea untuk menghindari ruang putih di atas
          children: [
            // Konten Anda di sini
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 8, left: 4, right: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Menerima",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 0),
                        Text(
                          "Rp.100.000",
                          style: TextStyle(
                            color: Color.fromARGB(255, 135, 0, 0),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 60),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Memberi",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 0),
                        Text(
                          "Rp.50.000",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 136, 34),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            ListTile(
              title: Text(
                "Agung",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Pulsa",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Lunas",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 136, 34),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.edit_square,
                    size: 15,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Angga",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Makan",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Rp. 50.000",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 136, 34),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.edit_square,
                    size: 15,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Anissa",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Print",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Rp. 100.000",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 135, 0, 0),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.edit_square,
                    size: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800], // Warna latar belakang
        foregroundColor: Colors.white, // Warna ikon
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // Bentuk bulat sempurna
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // Posisi FAB
    );
  }
}
