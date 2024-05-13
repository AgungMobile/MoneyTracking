import 'package:flutter/material.dart';
import 'package:money_tracking/pages/formpemasukan.dart';
import 'package:money_tracking/pages/formpengeluaran.dart';
import 'package:money_tracking/pages/hutang_page.dart';
import 'package:money_tracking/pages/laporan_page.dart';
import 'package:money_tracking/pages/pengaturan_page.dart';
import 'package:money_tracking/pages/transaksi_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> children = [
    Transaksi(),
    Laporan(),
    Hutang(),
    Pengaturan()
  ];
  int currentindex = 0;
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
                  leading: Icon(Icons.add_circle_outline,
                      color: Color.fromARGB(255, 0, 136, 34)),
                  title: Text('Pemasukan'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormPemasukan()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.remove_circle_outline,
                      color: Color.fromARGB(255, 135, 0, 0)),
                  title: Text('Pengeluaran'),
                  onTap: () {
                    Navigator.pop(context);
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

  void onTapTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: (currentindex == 0)
          ? FloatingActionButton(
              onPressed: _onFloatingActionButtonPressed,
              child: Icon(Icons.add),
              backgroundColor: Colors.grey[800], // Warna latar belakang
              foregroundColor: Colors.white, // Warna ikon
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(50), // Bentuk bulat sempurna
              ),
            )
          : PreferredSize(
              child: Container(child: Text('')),
              preferredSize: Size.fromHeight(100)),
      body: children[currentindex],
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(
            70), // Menyesuaikan ketinggian untuk menyertakan teks
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    onTapTapped(0);
                  },
                  icon: Icon(Icons.account_balance_wallet_outlined),
                  iconSize: 20,
                ),
                Text('Transaksi', style: TextStyle(fontSize: 12)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    onTapTapped(1);
                  },
                  icon: Icon(Icons.description_outlined),
                  iconSize: 20,
                ),
                Text('Laporan', style: TextStyle(fontSize: 12)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    onTapTapped(2);
                  },
                  icon: Icon(Icons.money_off_outlined),
                  iconSize: 20,
                ),
                Text('Hutang', style: TextStyle(fontSize: 12)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    onTapTapped(3);
                  },
                  icon: Icon(Icons.settings_outlined),
                  iconSize: 20,
                ),
                Text('Pengaturan', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
