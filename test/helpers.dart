import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';

Widget buildTestApp(Widget widgetForTesting) => MaterialApp(
      theme: Themes.darkTheme,
      home: widgetForTesting,
    );
