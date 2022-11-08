import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:myapp/data.dart';
import 'package:myapp/drawer.dart';
import 'Models/Destinations.dart';
import 'Screens/ViewDestinationPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PreviewSite2 _siteData = PreviewSite2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "Wellcome in jordan",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            alignment: Alignment.center,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
              )),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(siteData: _siteData, siteName: "Jarash"),
              ),
              Expanded(
                flex: 5,
                child: ReUsableCard(siteData: _siteData, siteName: "Aqaba"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(siteData: _siteData, siteName: "Dead sea"),
              ),
              Expanded(
                  flex: 5,
                  child:
                      ReUsableCard(siteData: _siteData, siteName: "wadi rum")),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(siteData: _siteData, siteName: "Ajloan"),
              ),
              Expanded(
                  flex: 5,
                  child:
                      ReUsableCard(siteData: _siteData, siteName: "Im Qays")),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: ReUsableCard(siteData: _siteData, siteName: "Patra")),
              Expanded(
                  flex: 5,
                  child: ReUsableCard(
                      siteData: _siteData, siteName: "Maeein Falls")),
            ],
          ),
        ],
      ),
    );
  }
}

class ReUsableCard extends StatelessWidget {
  ReUsableCard({
    Key? key,
    required PreviewSite2 siteData,
    required this.siteName,
  })  : _siteData = siteData,
        super(key: key);

  final PreviewSite2 _siteData;
  final String siteName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.all(5),
      height: 230,
      width: 195,
      child: Stack(
        children: [
          Container(
            height: 230,
            width: 195,
            child: GestureDetector(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  _siteData.getSiteImage(siteName: siteName),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DestinationPage(siteindex: 1),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Text(
              _siteData.getSiteTitle(siteName: siteName),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
