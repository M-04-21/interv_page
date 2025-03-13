import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interv_page/components/uni_button.dart';

class BuyPremium extends StatelessWidget {
  const BuyPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Color(0xFFD5F4F9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/svg/lock.svg'),
            FittedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Text(
                  'This section is not available for free subscription',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            UniButton(
              child: Text(
                ' Buy premium ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}



/*
Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.lock_outline),
            Text(
              'This section is not available for free subscription',
              style: TextStyle(fontSize: 10),
            ),
            UniButton(child: Text('Buy premium'), onPress: () {}),
          ],
        ),
*/