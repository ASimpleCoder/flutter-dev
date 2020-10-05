import 'package:flutter/material.dart';
import 'package:weather_app/models/src/app_settings.dart';
import 'package:weather_app/models/src/weather.dart';
import 'package:weather_app/utils/flutter_ui_utils.dart' as ui;

class ForecastPage extends StatefulWidget {
  final PopupMenuButton menu;
  final Widget settingsButton;
  final AppSettings settings;

  const ForecastPage({
    Key key,
    this.menu,
    this.settingsButton,
    @required this.settings,
  }) : super(key: key);

  @override
  _ForecastPageState createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> { // TODO add "with" part
  int activeTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ui.appBarHeight(context)),
        child: Text("Transition App Bar will be here"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "This is the weather app body"
            ),
          ],
        ),
      )
    );
  }
}
