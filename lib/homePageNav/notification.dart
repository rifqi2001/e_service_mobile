import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<String> notifications = [
    'Pesan Baru dari Admin E-SERVICE',
    'Diskon untuk pengguna baru',
    'Beri Rating untuk Pelayanan Kami!',
    'Pembayaran berhasil!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(notifications[index]),
                Text(
                  DateFormat('HH:mm').format(DateTime.now()), // Format waktu sesuai keinginan Anda
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
