import 'package:flutter/material.dart';

class TElevatedButtonTheme{

  TElevatedButtonTheme._();


  /// -- Light Theme

  static final lightElevatedButtonTheme=ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(

      elevation: 0.0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),

    )

  );



  /// -- Dark Theme

  static final darkElevatedButtonTheme=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
    )

  );



}