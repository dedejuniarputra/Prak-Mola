import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Column'),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Ilmu Komputer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              ' FMIPA',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              ' Universitas Lampung',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              ' 2024',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
