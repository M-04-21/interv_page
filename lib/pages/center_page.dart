import 'package:flutter/material.dart';
import 'package:interv_page/components/buy_premium.dart';
import 'package:interv_page/components/history_tiles/history_tile.dart';
import 'package:interv_page/components/uni_button.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  double _currentValue = 36.6;

  @override
  Widget build(BuildContext context) {
    final dividerRadius = MediaQuery.of(context).size.height * 0.0065;
    final dividerColor = Colors.lightBlue[100];
    final trackColor = Colors.black12;
    final trackHeight = MediaQuery.of(context).size.height * 0.003;
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        const Text(
          'My body temperature',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        _getLabeledSlider(dividerColor, dividerRadius, trackColor, trackHeight),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        UniButton(
          child: const Text(' Record ', style: TextStyle(fontSize: 16)),
          onPress: () {
            setState(() {
              _currentValue = 36.6;
            });
          },
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        const Text(
          'Last records:',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: MediaQuery.of(context).size.width * 0.035,
            children: _getHistoryTiles(context),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
              ),
              child: BuyPremium(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _getHistoryTiles(BuildContext context) {
    return [
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
    ];
  }

  Widget _getLabeledSlider(
    Color? dividerColor,
    double dividerRadius,
    Color trackColor,
    double trackHeight,
  ) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: _getSlider(
                dividerColor,
                dividerRadius,
                trackColor,
                trackHeight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.035,
              vertical: MediaQuery.of(context).size.height * 0.01,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _getLabelText(32.0),
                  _getLabelText(36.6),
                  _getLabelText(41.2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _getLabelText(double temperature) => Text(
    '${temperature.toStringAsFixed(1)}°',
    style: TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize:
          _currentValue < temperature + (42.1 - 32.0) / 4 &&
                  _currentValue > temperature - (42.1 - 32.0) / 4
              ? 20
              : 16,
    ),
  );

  SfSliderTheme _getSlider(
    Color? dividerColor,
    double dividerRadius,
    Color trackColor,
    double trackHeight,
  ) {
    return SfSliderTheme(
      data: SfSliderThemeData(
        activeDividerColor: dividerColor,
        activeDividerRadius: dividerRadius,
        inactiveDividerColor: dividerColor,
        inactiveDividerRadius: dividerRadius,
        thumbColor: dividerColor,
        activeTrackColor: trackColor,
        inactiveTrackColor: trackColor,
        activeTrackHeight: trackHeight,
        inactiveTrackHeight: trackHeight,
        activeLabelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        inactiveLabelStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
      child: SfSlider(
        interval: (41.2 - 32.0) / 12,
        showDividers: true,
        showLabels: false,
        labelFormatterCallback: (actualValue, formattedText) {
          formattedText =
              formattedText.contains('.') ? formattedText : '$formattedText.0';
          return ['32.0', '36.6', '41.2'].contains(formattedText)
              ? '$formattedText°'
              : '';
        },
        min: 32.0,
        max: 41.2,
        value: _currentValue,
        onChanged: (dynamic v) {
          setState(() {
            _currentValue = v;
          });
        },
      ),
    );
  }
}
