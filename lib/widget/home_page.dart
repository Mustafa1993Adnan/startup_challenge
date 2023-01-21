import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_accelerator/widget/tab_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.92),
              ),
              width: 80,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      // color: Colors.lightBlue,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.lightBlue),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("work")
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.withOpacity(0.92),
                ),
                width: 80,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        // color: Colors.lightBlue,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.lightBlue),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("work")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.withOpacity(0.92),
                ),
                width: 80,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        // color: Colors.lightBlue,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.lightBlue),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("work")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.withOpacity(0.92),
                ),
                width: 80,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        // color: Colors.lightBlue,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.lightBlue),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("work")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      //
      //
      const TabControllerItems(),
      // //
      // myCard(),
      // // SizedBox(
      // //   height: 10,
      // // ),
      // // myCard(),
    ]);
  }
}
