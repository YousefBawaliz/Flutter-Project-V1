import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:myapp/Models/Site.dart';
import '../Models/Destinations.dart';

class DestinationPage extends StatefulWidget {
  final int siteindex;
  const DestinationPage({super.key, required this.siteindex});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  List<bool> expanded = [false, false, false, false];
  SiteStorage mysiteStorage = SiteStorage();
  int FavoriteCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              FavoriteButton(
                  isFavorite: false,
                  iconSize: 40,
                  valueChanged: (_isFavorite) {
                    setState(() {
                      if (_isFavorite) {
                        FavoriteCount += 1;
                        _isFavorite = false;
                      } else {
                        FavoriteCount -= 1;
                        _isFavorite = true;
                      }
                    });
                  }),
              SizedBox(
                width: 20,
                child: SizedBox(
                  child: Text('$FavoriteCount'),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.map)
            ],
          )
        ],

        // backgroundColor: Color.fromARGB(221, 68, 59, 59),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        mysiteStorage.getSiteImage(index: widget.siteindex)),
                  ),
                ),
              ),
            ),
            Container(
              height: 170,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                    mysiteStorage.getSiteDescription(index: widget.siteindex)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                children: [
                  ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 500),
                      dividerColor: Colors.black87,
                      elevation: 1,
                      children: [
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("What to see");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[0],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Activites");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[1],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Reviews");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[2],
                        ),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          expanded[panelIndex] = !isExpanded;
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
