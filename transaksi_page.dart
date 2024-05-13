import 'package:flutter/material.dart';
import 'package:calendar_appbar/calendar_appbar.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  State<Transaksi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        accent: Color.fromARGB(255, 58, 58, 58),
        backButton: false,
        locale: 'id',
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 0, bottom: 8, left: 4, right: 4),
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
                            "Pemasukan",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            "Rp.1.100.000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 136, 34),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Pengeluaran",
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
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Selisih",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            "Rp.1.000.000",
                            style: TextStyle(
                              color: Colors.black,
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
                child: Text(
                  "Transaksi",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Gaji Bulanan",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Tabungan",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Rp. 1.000.000",
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
                  "Makan dan Minum",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Harian",
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
                  "Pulsa",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Elektronik",
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
      ),
    );
  }
}
