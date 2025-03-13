import 'package:flutter/material.dart';
import 'package:interv_page/components/uni_button.dart';

class BuyPremium extends StatelessWidget {
  const BuyPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.lock_outline,
              size: MediaQuery.of(context).size.height * 0.05,
              color: Colors.deepPurple,
            ),
            Text(
              'This section is not available for free subscription',
              style: TextStyle(fontSize: 13),
            ),
            UniButton(child: Text('Buy premium'), onPress: () {}),
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