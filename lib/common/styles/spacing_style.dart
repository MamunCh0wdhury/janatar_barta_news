import 'package:flutter/cupertino.dart';
import 'package:janatar_barta/utils/constants/size.dart';

class TSpacingStyle{

  static const EdgeInsetsGeometry paddingWithAppBarHeight= EdgeInsets.only(
      top: TSize.appBarHeight,
      left: TSize.defaultSpace,
      right: TSize.defaultSpace,
      bottom: TSize.defaultSpace
  );
}