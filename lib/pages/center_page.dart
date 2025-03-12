import 'package:flutter/material.dart';
import 'package:interv_page/assets/buy_premium.dart';
import 'package:interv_page/assets/history_tiles/history_tile.dart';
import 'package:interv_page/assets/uni_button.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  double _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(17),
      child: Column(
        children: <Widget>[
          const Text('My body temperature'),
          Slider(
            min: 0,
            max: 100,
            value: _currentValue,
            onChanged: (v) {
              setState(() {
                _currentValue = v;
              });
            },
          ),
          Text('[DEBUG] Value = $_currentValue'),
          UniButton(
            child: const Text('Record'),
            onPress: () {
              setState(() {
                _currentValue = 50;
              });
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Text('Last records:'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: MediaQuery.of(context).size.width * 0.035,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                HistoryTile(
                  status: TemperatureStatus.fever,
                  date: '15 Nov',
                  time: '7 am',
                  temperature: 97.8,
                ),
                HistoryTile(
                  status: TemperatureStatus.high,
                  date: '16 Nov',
                  time: '8 pm',
                  temperature: 102.7,
                ),
                HistoryTile(
                  status: TemperatureStatus.ok,
                  date: '17 Nov',
                  time: '5 pm',
                  temperature: 100,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.005),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: BuyPremium(),
            ),
          ),
        ],
      ),
    );
  }
}
