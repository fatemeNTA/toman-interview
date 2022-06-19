import 'package:flutter/material.dart';
import 'package:flutter_toman/theme.dart';
import 'package:flutter_toman/ui/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
        fontFamily: 'IranYekan', color: LightThemeColors.primaryTextColor);
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        hintColor: LightThemeColors.secondryTextColor,
        unselectedWidgetColor: LightThemeColors.secondryColor,
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: LightThemeColors.secondryColor),
                borderRadius: BorderRadius.circular(8)),
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    color:
                        LightThemeColors.primaryTextColor.withOpacity(0.1)))),
        appBarTheme: AppBarTheme(
            titleTextStyle: defaultTextStyle.copyWith(fontSize: 14),
            backgroundColor: Colors.white,
            foregroundColor: LightThemeColors.primaryTextColor,
            elevation: 0),
        textTheme: TextTheme(
          button: defaultTextStyle.copyWith(
              color: LightThemeColors.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 15),
          subtitle2: defaultTextStyle,
          bodyText2: defaultTextStyle.copyWith(fontSize: 15),
          caption:
              defaultTextStyle.apply(color: LightThemeColors.secondryTextColor),
        ),
        colorScheme: const ColorScheme.light(
          primary: LightThemeColors.primaryColor,
          secondary: LightThemeColors.primaryColor,
          onSecondary: Colors.white,
          surfaceVariant: Colors.white,
        ),
        snackBarTheme: SnackBarThemeData(
            contentTextStyle: defaultTextStyle.apply(color: Colors.white)),
      ),
      home: const  Directionality(
          textDirection: TextDirection.rtl, child: HomeScreen()),
    );
  }
}
