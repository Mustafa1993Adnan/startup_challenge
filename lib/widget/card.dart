import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data_temp/data_todo.dart';

class myCard extends StatefulWidget {
  const myCard({Key? key}) : super(key: key);

  @override
  State<myCard> createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  var checkedValue = false;
  String dropdownValue = 'Edit';
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        color: Colors.yellow.shade100,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${cardsList[0].title}',
                    // 'The first task',
                    style: const TextStyle(fontSize: 20),
                  ),
                  DropdownButton<String>(
                    // Step 3.
                    value: dropdownValue,
                    // Step 4.
                    items: <String>['Edit', 'Delete']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 10),
                        ),
                        //     Icon(
                        //   Icons.more_horiz,
                        //   color: Colors.grey,
                        // ),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      '${cardsList[0].description}',
                      style: const TextStyle(fontSize: 28.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            // color: Colors.lightBlue,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            // color: Colors.lightBlue,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                          ),
                        ],
                      )),
                  Row(
                    children: [
                      const Text("done"),
                      Checkbox(
                        value: cardsList[0].isActive,
                        onChanged: (newValue) {
                          checkedValue = !checkedValue;
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
