import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/functions.dart';

class Determanistc1 extends StatefulWidget {
  const Determanistc1({super.key});

  @override
  State<Determanistc1> createState() => _Determanistc1State();
}

class _Determanistc1State extends State<Determanistc1> {
  var arivalTimeController = TextEditingController();
  var servisTimeController = TextEditingController();
  var systemcapastyController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('determanistc 1'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextFormField(
            controller: arivalTimeController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('Arival Time')),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: servisTimeController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('Servis Time')),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: systemcapastyController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('System Capasty')),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              var ti = Func(
                  arvalTime: int.parse(arivalTimeController.text),
                  serviseTime: int.parse(servisTimeController.text),
                  systemCapasty: int.parse(
                    systemcapastyController.text,
                  )).calaTi();

              print('$ti');
            },
            child: Text('solve'),
            color: Colors.amber,
          ),
        ]),
      ),
    );
  }
}
