import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OkCheckBox extends StatelessWidget {
  const OkCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
      child: SvgPicture.asset('assets/svg/ok_rounded.svg'),
    );
  }
}

class HighCheckBox extends StatelessWidget {
  const HighCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
      child: SvgPicture.asset('assets/svg/high_rounded.svg'),
    );
  }
}

class FeverCheckBox extends StatelessWidget {
  const FeverCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.015),
      child: SvgPicture.asset('assets/svg/fever_rounded.svg'),
    );
  }
}
