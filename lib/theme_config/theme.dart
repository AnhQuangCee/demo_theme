import 'package:flutter/material.dart';

import 'color_sheme.dart';
import 'text_theme.dart';

class DAppTheme {
  static ThemeData lightTheme = ThemeData(
    // Color theme
    brightness: Brightness.light,
    textTheme: DTextTheme.lightTextTheme,
    fontFamily: 'Quicksand',
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFF55050),
    sliderTheme: const SliderThemeData(
      showValueIndicator: ShowValueIndicator.always,
      valueIndicatorColor: Color(0xFFF55050),
      trackShape: RoundedRectSliderTrackShape(),
      rangeTrackShape: RoundedRectRangeSliderTrackShape(),
      trackHeight: 4.0,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
      ),
      rangeValueIndicatorShape: PaddleRangeSliderValueIndicatorShape(),
      rangeTickMarkShape: RoundRangeSliderTickMarkShape(
        tickMarkRadius: 20,
      ),
      rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 12.0),
    ),

    // colorScheme: DColorSheme.lightColorScheme,
    // appBarTheme: FAppBarTheme.lightAppBarTheme,
    // bottomAppBarTheme: FBottomAppBarTheme.lightBottomAppbarTheme,

    // // Color single
    // cardColor: Colors.green,
    // primaryColor: Colors.red,
    // primaryColorLight: Colors.green,
    // primaryColorDark: Colors.green,
    // canvasColor: Colors.white,
    // shadowColor: Colors.green,
    // scaffoldBackgroundColor: Colors.white,
    // bottomAppBarColor: Colors.white,
    // dividerColor: Colors.green,
    // focusColor: Colors.green,
    // hoverColor: Colors.green,
    // highlightColor: Colors.green,
    // splashColor: Colors.green,
    // selectedRowColor: Colors.green,
    // unselectedWidgetColor: Colors.green,
    disabledColor: const Color(0xFFF1F1F1),
    // secondaryHeaderColor: Colors.white,
    // backgroundColor: Colors.white,
    // dialogBackgroundColor: Colors.green,
    // indicatorColor: Colors.green,
    // hintColor: Colors.green,
    // errorColor: Colors.green,
    // toggleableActiveColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    // Color Theme
    brightness: Brightness.dark,
    textTheme: DTextTheme.darkTextTheme,
    fontFamily: 'Quicksand',
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFF55050),
    sliderTheme: const SliderThemeData(
      showValueIndicator: ShowValueIndicator.always,
      valueIndicatorColor: Color(0xFFBD101C),
      trackShape: RoundedRectSliderTrackShape(),
      rangeTrackShape: RoundedRectRangeSliderTrackShape(),
      trackHeight: 4.0,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
      ),
      rangeValueIndicatorShape: PaddleRangeSliderValueIndicatorShape(),
      rangeTickMarkShape: RoundRangeSliderTickMarkShape(
        tickMarkRadius: 20,
      ),
      rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 12.0),
    ),

    // colorScheme: FColorSheme.darkColorScheme,
    // appBarTheme: FAppBarTheme.darkAppBarTheme,
    // bottomAppBarTheme: FBottomAppBarTheme.darkBottomAppbarTheme,

    // Single Color
    // cardColor: Colors.amber,
    // primaryColor: Colors.red,
    // primaryColorLight: Colors.amber,
    // primaryColorDark: Colors.amber,
    // canvasColor: Colors.white,
    // shadowColor: Colors.amber,
    // scaffoldBackgroundColor: Colors.amber,
    // bottomAppBarColor: Colors.amber,
    // dividerColor: Colors.amber,
    // focusColor: Colors.amber,
    // hoverColor: Colors.amber,
    // highlightColor: Colors.amber,
    // splashColor: Colors.amber,
    // selectedRowColor: Colors.amber,
    // unselectedWidgetColor: Colors.amber,
    disabledColor: const Color.fromARGB(255, 56, 46, 44),
    // secondaryHeaderColor: Colors.amber,
    // backgroundColor: Colors.amber,
    // dialogBackgroundColor: Colors.amber,
    // indicatorColor: Colors.amber,
    // hintColor: Colors.amber,
    // errorColor: Colors.amber,
    // toggleableActiveColor: Colors.amber,
  );
}
