import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:calendar_appbar/calendar_appbar.dart'; // Pastikan library ini sudah ada di pubspec.yaml

class Laporan extends StatefulWidget {
  const Laporan({Key? key}) : super(key: key);

  @override
  State<Laporan> createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  final double pemasukan = 1100000;
  final double pengeluaran = 100000;

  // Variabel untuk tanggal
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double selisih = pemasukan - pengeluaran;
    double total = pemasukan + pengeluaran;

    List<PieChartSectionData> getSections() {
      return [
        PieChartSectionData(
          value: pemasukan,
          title: "${(pemasukan / total * 100).toStringAsFixed(1)}%",
          color: Color.fromARGB(255, 0, 136, 34),
          radius: 60,
          titleStyle: const TextStyle(fontSize: 12, color: Colors.white),
        ),
        PieChartSectionData(
          value: pengeluaran,
          title: "${(pengeluaran / total * 100).toStringAsFixed(1)}%",
          color: Color.fromARGB(255, 135, 0, 0),
          radius: 60,
          titleStyle: const TextStyle(fontSize: 12, color: Colors.white),
        ),
      ];
    }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(
                  Icons.attach_money,
                  size: 24,
                  color: Color.fromARGB(255, 0, 136, 34),
                ),
                title: Text(
                  "Pemasukan",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: Text(
                  "Rp. ${pemasukan.toStringAsFixed(0)}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 136, 34),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.remove,
                  size: 24,
                  color: Color.fromARGB(255, 135, 0, 0),
                ),
                title: Text(
                  "Pengeluaran",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: Text(
                  "Rp. ${pengeluaran.toStringAsFixed(0)}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 135, 0, 0),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  selisih >= 0 ? Icons.trending_up : Icons.trending_down,
                  size: 24,
                  color: selisih >= 0
                      ? Color.fromARGB(255, 0, 136, 34)
                      : Color.fromARGB(255, 135, 0, 0),
                ),
                title: Text(
                  "Selisih",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: Text(
                  "Rp. ${selisih.toStringAsFixed(0)}",
                  style: TextStyle(
                    fontSize: 14,
                    color: selisih >= 0
                        ? Color.fromARGB(255, 0, 136, 34)
                        : Color.fromARGB(255, 135, 0, 0),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 200,
                  child: PieChart(
                    PieChartData(
                      sections: getSections(),
                      centerSpaceRadius: 60,
                      sectionsSpace: 0,
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            Colors.black, // Mengatur warna teks menjadi hitam
                      ),
                      child: Text("Laporan Bulanan"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            Colors.black, // Mengatur warna teks menjadi hitam
                      ),
                      child: Text("Laporan Custom"),
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
