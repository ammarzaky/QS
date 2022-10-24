import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'determanistc1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('queue'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Determanistc1()),
                );
              },
              child: Text('determanistc 1'),
              color: Colors.amber,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('determanistc 2'),
              color: Colors.amber,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('button1'),
              color: Colors.amber,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('button1'),
              color: Colors.amber,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('button1'),
              color: Colors.amber,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('button1'),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
