import 'package:flutter/material.dart';

import 'package:intern_task/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tap the Below Button\n    to Create Form',
              style: TextStyle(
                color: Color.fromARGB(
                  255,
                  5,
                  77,
                  71,
                ),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const Screen2();
                      }));
                    },
                    child: const Text(
                      "Create Form",
                      style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          5,
                          77,
                          71,
                        ),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
