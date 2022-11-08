import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  String urlImag1 = "";
  String urlImag2 = "";
  String title1 = "";
  String title2 = "";
  Data(String urlImag1, String urlImag2, String title1, String title2) {
    urlImag1 = this.urlImag1;
    urlImag2 = this.urlImag2;
    title1 = this.title1;
    title2 = this.title2;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.all(5),
          height: 200,
          width: 195,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 195,
                child: GestureDetector(
                  child:
                      Image(fit: BoxFit.fill, image: NetworkImage("$urlImag1")),
                  onTap: () {},
                ),
              ),
              Container(
                child: Text(
                  "$title1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                alignment: Alignment.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.all(5),
          height: 250,
          width: 195,
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 195,
                child: GestureDetector(
                  child:
                      Image(fit: BoxFit.fill, image: NetworkImage("$urlImag2")),
                  onTap: () {},
                ),
              ),
              Container(
                child: Text(
                  "$title2",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
