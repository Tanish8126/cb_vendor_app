import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BillingScreen extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {'title': 'Chai', 'price': '15', 'qty': '1'},
    {'title': 'Coffee', 'price': '15', 'qty': '1'},
    {'title': 'Bun Maska', 'price': '25', 'qty': '1'},
    {'title': 'Chips', 'price': '20', 'qty': '1'},
    {'title': 'Bingo', 'price': '50', 'qty': '1'},
  ];

  final f = NumberFormat("\$##,##,###.00", "en_US");
  BillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int total = 0;
    total = data
        .map((e) => e['price'] * e['qty'])
        .reduce((value, element) => value + element);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                        title: Text(data[index]['title'].toString()),
                        subtitle: Text(
                            "${f.format(data[index]['price'])} x  ${data[index]['qty']}"),
                        trailing: Text(f.format(
                            data[index]['price'] * data[index]['qty'])));
                  }))),
          Container(
            color: Colors.blueAccent,
            child: Row(
              children: [Text("Total:${f.format(total)}")],
            ),
          )
        ],
      ),
    );
  }
}
