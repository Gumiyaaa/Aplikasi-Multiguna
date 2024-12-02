import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorldClockPage extends StatelessWidget {
  const WorldClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF676BD0), // Warna latar belakang utama
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0), // Mengatur posisi vertikal dari teks
              child: Text(
                'Jam Dunia',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black54,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: const Color(0xFF4D57B4), // Variasi warna untuk AppBar
          elevation: 5, // Memberikan bayangan pada AppBar untuk efek yang lebih elegan
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            WorldClockItem(timezone: 'America/New_York', location: 'New York'),
            WorldClockItem(timezone: 'Europe/London', location: 'London'),
            WorldClockItem(timezone: 'Asia/Tokyo', location: 'Tokyo'),
            WorldClockItem(timezone: 'Australia/Sydney', location: 'Sydney'),
            // Tambahkan lebih banyak kota sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class WorldClockItem extends StatelessWidget {
  final String timezone;
  final String location;
  const WorldClockItem({super.key, required this.timezone, required this.location});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now().toUtc().add(Duration(hours: getTimezoneOffset(timezone)));
    String formattedTime = DateFormat('hh:mm a').format(now);

    return Card(
      color: Colors.white.withOpacity(0.9), // Warna latar belakang kartu dengan transparansi
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 3, // Memberikan bayangan pada kartu
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Membuat sudut kartu melengkung
      ),
      child: ListTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              location,
              style: const TextStyle(
                color: Color(0xFF4D57B4), // Warna teks yang kontras
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.black45,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center, // Menengahkan teks
            ),
            const SizedBox(height: 8.0), // Spasi antara lokasi dan waktu
            Text(
              formattedTime,
              style: const TextStyle(
                color: Color(0xFF4D57B4),
                fontSize: 16.0,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.black45,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center, // Menengahkan teks
            ),
          ],
        ),
        trailing: const Icon(
          Icons.map,
          color: Color(0xFF4D57B4),
        ),
        leading: const Icon(
          Icons.access_time,
          color: Color(0xFF4D57B4),
        ),
      ),
    );
  }

  int getTimezoneOffset(String timezone) {
    switch (timezone) {
      case 'America/New_York':
        return -5;
      case 'Europe/London':
        return 0;
      case 'Asia/Tokyo':
        return 9;
      case 'Australia/Sydney':
        return 11;
      default:
        return 0;
    }
  }
}
