import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Row'),
        ),
        body: const Row(
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
