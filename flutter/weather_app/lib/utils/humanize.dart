import 'package:weather_app/models/src/weather.dart';

import 'date_utils.dart';

class Humanize {
  static List<String> enumValues(List<dynamic> values) {
    return values.map((u) => u.toString().split(".")[1]).toList();
  }

  static String singleEnumValue(dynamic value) {
    return value.toString().split(".").last;
  }

  static String currentTemperature(TemperatureUnit unit, Weather temp) {
    var tempInt = temp.temperature.current;
    if (unit == TemperatureUnit.fahrenheit) {
      tempInt = Temperature.celsiusToFahrenheit(temp.temperature.current);
    }
    return '$tempInt $unit'; // TODO add AnimationUtil part
  }

  static String weatherDescription(Weather weather) {
    var day = DateUtils.weekdays[weather.dateTime.weekday];
    var description = Weather.displayValues[weather.description];
    return "$day. ${description.replaceFirst(description[0], description[0].toUpperCase())}.";
  }
}