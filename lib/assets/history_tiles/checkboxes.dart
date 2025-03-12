import 'package:flutter/material.dart';

class OkCheckBox extends StatelessWidget {
  const OkCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      height: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,
      child: Icon(Icons.done, color: Colors.green),
    );
  }
}

class HighCheckBox extends StatelessWidget {
  const HighCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
      decoration: BoxDecoration(
        color: Colors.red[100],
        borderRadius: BorderRadius.circular(10),
      ),
      height: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,
      child: Icon(Icons.keyboard_arrow_up, color: Colors.red[300]),
    );
  }
}

class FeverCheckBox extends StatelessWidget {
  const FeverCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
      decoration: BoxDecoration(
        color: Colors.red[200],
        borderRadius: BorderRadius.circular(10),
      ),
      height: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,
      child: Icon(Icons.keyboard_double_arrow_up, color: Colors.red),
    );
  }
}
