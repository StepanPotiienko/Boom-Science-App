import 'package:flutter/material.dart';

import 'components/item_card.dart';
import 'components/side_menu_drawer.dart';

void main() {
  runApp(const HomePageInfScroll());
}

class HomePageInfScroll extends StatelessWidget {
  const HomePageInfScroll({super.key});

  final String appTitle = "Boom - Science!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: const SideMenuDrawer(),
            appBar: AppBar(
                title: Text(
              appTitle,
              textAlign: TextAlign.center,
              textScaleFactor: 1.1,
            )),
            body: LayoutBuilder(builder: (context, constraits) {
              return SingleChildScrollView(
                  child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraits.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SingleChildItemCard(
                              title: "How to swim faster",
                              description:
                                  "You want to swim faster? Here is little guide that can help you with this...",
                              imageURL:
                                  "https://media.istockphoto.com/id/97892369/uk/%D1%84%D0%BE%D1%82%D0%BE/%D0%BB%D1%8E%D0%B4%D0%B8%D0%BD%D0%B0-%D0%BF%D0%BB%D0%B0%D0%B2%D0%B0%D1%94-%D1%83-%D0%B2%D0%BE%D0%B4%D1%96.jpg?s=2048x2048&w=is&k=20&c=mEHG4sb-ebEHCW8_w0l4NiyEpTvq3T2BDDBmA0fVo1w=",
                              onPressed: () {
                                print("Hallo.");
                              },
                            ),
                          ],
                        ),
                      )));
            })));
  }
}
