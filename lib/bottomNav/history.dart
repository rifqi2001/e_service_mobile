import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<History> {
  final Set<String> orders = {
    'Cuci AC, 1 unit',
    'Pasang AC, 2 unit',
    'Bongkar AC, 1 unit',
    'Cuci AC, 5 unit',
    'Perbaikan AC, 2 unit',
    'Perbaikan AC, 1 unit'
  };

  void removeOrder(String order) {
    setState(() {
      orders.remove(order);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Pesanan dihapus")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Pesanan',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/history-bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    String order = orders.elementAt(index);
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) => removeOrder(order),
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: ListTile(
                          leading: Icon(Icons.shopping_cart),
                          title: Text('Service #${index + 1}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('$order'),
                              SizedBox(height: 4.0),
                              Text('Tanggal: ${DateTime.now().toString()}'),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
