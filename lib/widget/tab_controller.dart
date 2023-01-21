import 'package:flutter/material.dart';

import 'card.dart';

class TabControllerItems extends StatelessWidget {
  const TabControllerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.withOpacity(0.92),
                    ),
                  ),
                  text: " 1 pack",
                ),
                Tab(
                  icon: Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.92),
                  )),
                  text: " 2 pack",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // tabBarViewItem(),
              myCard(),
              Container(
                child: Text("tab 2"),
              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 24),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       ButtonsTabBar(
        //         contentPadding: const EdgeInsets.only(
        //           left: 7,
        //           right: 21,
        //         ),
        //         labelStyle: const TextStyle(fontSize: 20, color: Colors.brown),
        //         radius: 28,
        //         height: 6.5,
        //         backgroundColor: Colors.red,
        //         unselectedBackgroundColor: Colors.blue,
        //         tabs: [
        //           Tab(
        //             icon: Container(
        //               width: 20,
        //               height: 20,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10),
        //                 color: Colors.green.withOpacity(0.92),
        //               ),
        //             ),
        //             text: " 1 pack",
        //           ),
        //           Tab(
        //             icon: Container(
        //                 decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: Colors.blue.withOpacity(0.92),
        //             )),
        //             text: " 2 pack",
        //           ),
        //         ],
        //       ),
        //       const SizedBox(height: 16),
        //       Expanded(
        //         child: TabBarView(
        //           children: <Widget>[
        //             // tabBarViewItem(),
        //             myCard(),
        //             Container(
        //               child: Text("tab 2"),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
