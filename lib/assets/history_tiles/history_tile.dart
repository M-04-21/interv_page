import 'package:flutter/material.dart';
import 'package:interv_page/assets/history_tiles/checkboxes.dart';

enum TemperatureStatus { ok, high, fever }

class HistoryTile extends StatelessWidget {
  final TemperatureStatus status;
  final String date;
  final String time;
  final double temperature;

  HistoryTile({
    super.key,
    required this.status,
    required this.date,
    required this.temperature,
    required this.time,
  });

  final Map<TemperatureStatus, Widget> _checkBoxes = {
    TemperatureStatus.ok: OkCheckBox(),
    TemperatureStatus.high: HighCheckBox(),
    TemperatureStatus.fever: FeverCheckBox(),
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.27,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.005,
            ),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
                vertical: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: MediaQuery.of(context).size.width * 0.015,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(date, style: TextStyle(fontWeight: FontWeight.w400)),
                      Text(time, style: TextStyle(fontWeight: FontWeight.w200)),
                    ],
                  ),
                  Text(
                    '$temperature°F',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          _checkBoxes[status]!,
        ],
      ),
    );
  }
}
