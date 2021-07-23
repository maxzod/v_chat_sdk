import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    onPrimary: Colors.white,
    primary: Colors.red,
    padding: EdgeInsets.all(10),
  ),
);

final outlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
    primary: Colors.red,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
  ),
);

final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.blue,
    ));

final appBarTheme = AppBarTheme(
  elevation: 1,
  shadowColor: Colors.white,
  textTheme: GoogleFonts.nunitoTextTheme().copyWith(
      headline6: GoogleFonts.nunito(
          color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800)),
  backgroundColor: Colors.black54,
  iconTheme: IconThemeData(color: Colors.white),
  brightness: Brightness.dark,
);

final   vchatDarkTheme = ThemeData.dark().copyWith(

    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.black45,
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Color(0xff362421),
    iconTheme: IconThemeData(color: Colors.white),

    dialogTheme: DialogTheme(
      contentTextStyle: TextStyle(color: Colors.white, fontSize: 19),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 23),
      backgroundColor: Colors.black,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
            )),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        backgroundColor: Colors.black38,
        elevation: 0,
        modalBackgroundColor: Colors.black45,
        modalElevation: 0),
    cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black26,
        primaryColor: Colors.red,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: Colors.white, fontSize: 20),
          primaryColor: Colors.red,
          actionTextStyle: TextStyle(color: Colors.white),
        )),
    accentColor: Colors.redAccent,
    fixTextFieldOutlineLabel: true,
    cardTheme: CardTheme(elevation: 1.5, color: Colors.white),
    errorColor: Colors.red,
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.red,
        selectionHandleColor: Colors.redAccent,
        selectionColor: Colors.redAccent[100]),
    elevatedButtonTheme: elevatedButtonThemeData,
    outlinedButtonTheme: outlinedButtonTheme,
    textButtonTheme: textButtonTheme,
    textTheme: GoogleFonts.nunitoTextTheme(
      // Theme.of(Get.context!).textTheme,
    )
        .copyWith(
      headline3: GoogleFonts.nunito(
          fontWeight: FontWeight.w700, color: Colors.red, fontSize: 50),
      headline4:
      GoogleFonts.nunito(fontWeight: FontWeight.w700, color: Colors.red),
      headline2:
      GoogleFonts.nunito(fontWeight: FontWeight.w900, color: Colors.red),
      headline6:
      GoogleFonts.nunito(fontWeight: FontWeight.w700, color: Colors.white),
      subtitle2: GoogleFonts.nunito(
          letterSpacing: .1,
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal),
      bodyText2: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 19,
          fontWeight: FontWeight.normal,
          letterSpacing: .15),
      bodyText1: GoogleFonts.nunito(
          color: Colors.white, fontSize: 19, letterSpacing: .5),
      subtitle1: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal,
          letterSpacing: .15),

      caption: GoogleFonts.nunito(
        color: Colors.white,
      ),
      button: GoogleFonts.nunito(
          height: 1.3,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white),
    ),
    backgroundColor: Colors.black,
    appBarTheme: appBarTheme);
