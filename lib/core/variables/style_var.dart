import 'package:mco/base/base_variable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleVar {
  TextStyle get tajawalTitr11 => TextStyle(
      fontSize: 11,
      height: 1,
      fontWeight: FontWeight.w600,
      color: Colors.black);

  TextStyle get tajawalTitr => TextStyle(
      fontSize: 13,
      height: 1,
      fontWeight: FontWeight.w600,
      color: Colors.black);

  TextStyle get tajawalTitr14 => TextStyle(
      fontSize: 14,
      height: 1,
      fontWeight: FontWeight.w600,
      color: Colors.black);

  TextStyle get tajawalTitr16 => TextStyle(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.light,
      );

  TextStyle get dark14Style => TextStyle(
        fontSize: 14,
        height: 1.5,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.darkest,
      );

  TextStyle get hint14Style => TextStyle(
        fontSize: 14,
        height: 1.5,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.darkest.withOpacity(0.3),
      );

  TextStyle get dark13Style => TextStyle(
        fontSize: 13,
        height: 2,
        fontWeight: FontWeight.w100,
        color: Variable.colorVar.darkest,
      );

  TextStyle get dark135Style => TextStyle(
        fontSize: 12,
        height: 1.2,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.darkest,
      );

  TextStyle get dark12Style => TextStyle(
        fontSize: 10,
        height: 1.2,
        fontWeight: FontWeight.w500,
        color: Variable.colorVar.darkest,
      );

  TextStyle get tajawalTitrBlue16 => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.blue,
      );

  TextStyle get tajawalTitr16Bold => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w900,
        color: Variable.colorVar.mainButtonFill,
      );

  TextStyle get tajawalTitr16BoldWhite => TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w900,
      color: Colors.white);

  TextStyle get tajawalTitr16BoldGreen => TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w900,
      color: Variable.colorVar.baseColor);

  TextStyle get tajawalTitr18Bold => TextStyle(
        fontSize: 18,
        height: 1,
        fontWeight: FontWeight.w900,
        color: Variable.colorVar.baseColor,
      );

  TextStyle get tajawalTitrAmber12 => TextStyle(
      fontSize: 12,
      height: 1,
      fontWeight: FontWeight.bold,
      color: Colors.amber);

  TextStyle get tajawalTitrAmber14 => TextStyle(
      fontSize: 14,
      height: 1,
      fontWeight: FontWeight.bold,
      color: Colors.amber);

  TextStyle get tajawalTitrAmber18 => TextStyle(
      fontSize: 18,
      height: 1,
      fontWeight: FontWeight.bold,
      color: Colors.amber);

  TextStyle get tajawal9 =>
      TextStyle(fontSize: 9, height: 1.5, color: Colors.black);

  TextStyle get tajawal =>
      TextStyle(fontSize: 10, height: 1.5, color: Colors.black);

  TextStyle get tajawal12 =>
      TextStyle(fontSize: 12, height: 1.5, color: Colors.black);

  TextStyle get light14 =>
      TextStyle(fontSize: 14, height: 1.5, color: Variable.colorVar.light);

  TextStyle get light10 =>
      TextStyle(fontSize: 10, height: 1.5, color: Variable.colorVar.light);

  TextStyle get tajawal14 =>
      TextStyle(fontSize: 14, height: 1.5, color: Colors.black);

  TextStyle get tajawal15 =>
      TextStyle(fontSize: 15, height: 1.7, color: Colors.black);

  TextStyle get tajawal16Bold => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 1.7,
        color: Colors.black.withOpacity(0.7),
      );

  TextStyle get tajawalBlack12 => TextStyle(
        fontSize: 12,
        height: 1.5,
        color: Colors.black,
      );

  TextStyle get tajawalAmber13 => TextStyle(
        fontSize: 13,
        height: 1.5,
        color: Colors.amber,
      );

  TextStyle get white100bold11 => TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  TextStyle get white100bold16 => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  TextStyle get tajawalWhite5012 => TextStyle(
      fontSize: 12, height: 1.5, color: Colors.black.withOpacity(0.5));

  TextStyle get textFormStyle => tajawalTitr16;

  TextStyle get titleStyleBlue => TextStyle(
        fontSize: 22.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.blue,
      );

  TextStyle get textFormStyle2 => TextStyle(
        fontSize: 20.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.dark,
      );

  TextStyle get countDownStyle => TextStyle(
        fontSize: 100.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.base,
      );

  TextStyle get tajawalHomeGray1 => TextStyle(
        fontSize: 16.0,
        height: 1,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  TextStyle get usernameInHomePage => TextStyle(
        fontSize: 12,
        height: 1.5,
        color: Colors.black,
      );

  TextStyle get tajawal12bottomBarActive => TextStyle(
      fontSize: 10, height: 1.4, color: Variable.colorVar.mainButtonFill);

  get tajawal12bottomBarDisable => TextStyle(
      fontSize: 10, height: 1.4, color: Variable.colorVar.bottomBarDisable);

  get tajawalTitr16base05 => TextStyle(
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w600,
      color: Variable.colorVar.baseColor05);

  get tajawalTitr14base05 => TextStyle(
      fontSize: 13,
      height: 1,
      fontWeight: FontWeight.w600,
      color: Variable.colorVar.baseColor05);

  get silverAppbBarTitle => TextStyle(
      fontSize: 14,
      height: 1,
      fontWeight: FontWeight.w700,
      color: Variable.colorVar.bgBaseColor);

  get errorSnackBar => TextStyle(
      fontSize: 14,
      height: 1,
      fontWeight: FontWeight.w700,
      color: Variable.colorVar.sptOrange);

  get tajawal15white => TextStyle(
        fontSize: 15,
        height: 1.7,
        color: Colors.white,
      );

  get tajawal17white => TextStyle(
        fontSize: 17,
        height: 1.7,
        color: Colors.white,
      );

  get tajawal19 => TextStyle(fontSize: 19, height: 1.5, color: Colors.black);

  get formButtonWhite => TextStyle(
        fontSize: 17,
        height: 1.5,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get formButtonWhite2 => TextStyle(
        fontSize: 24,
        height: 1.5,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get dayInMeetingCard => TextStyle(
        fontSize: 24,
        height: 1.2,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get monthInMeetingCard => TextStyle(
        fontSize: 20,
        height: 1.2,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get yearInMeetingCard => TextStyle(
        fontSize: 12,
        height: 1.2,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get timeInMeetingCard => TextStyle(
        fontSize: 12,
        height: 1.2,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get dayInSupportCard => TextStyle(
        fontSize: 14,
        // height: 1,
        color: Variable.colorVar.gray,
        fontWeight: FontWeight.w500,
      );

  get monthInSupportCard => TextStyle(
        fontSize: 14,
        height: 0.7,
        color: Variable.colorVar.gray,
        fontWeight: FontWeight.w500,
      );

  get yearInSupportCard => TextStyle(
        fontSize: 11,
        height: 1.4,
        color: Variable.colorVar.gray,
        fontWeight: FontWeight.w500,
      );

  get timeInSupportCard => TextStyle(
        fontSize: 10,
        // height: 0.7,
        color: Variable.colorVar.gray,
        fontWeight: FontWeight.w500,
      );

  get statusOfTicket => TextStyle(
        fontSize: 11,
        // height: 0.7,
        color: Colors.white,
      );

  get subjectStyle => TextStyle(
        fontSize: 15,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.baseDark,
      );

  get meetingTitleBlue => subjectStyle;

  get meetingSubTitle => TextStyle(
        fontSize: 11,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray.withOpacity(0.8),
      );

  get stringAvatar => TextStyle(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      );

  get blackBold => TextStyle(
        fontSize: 11,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  get black87Bold11 => TextStyle(
        fontSize: 11,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      );

  get grey87Bold11 => TextStyle(
        fontSize: 11,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      );

  get meetingCardSubtitle => TextStyle(
        fontSize: 13,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray.withOpacity(0.8),
      );

  get grayTitle => TextStyle(
        fontSize: 18,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray.withOpacity(1),
      );

  get titleStyleBlueBold => TextStyle(
        fontSize: 18.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.blue,
      );

  get chatTextStyle => TextStyle(
        fontSize: 14.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      );

  get chatDateStyle => TextStyle(
        fontSize: 12.0,
        height: 1,
        fontWeight: FontWeight.w500,
        color: Variable.colorVar.blue,
      );

  get inputSubtitleStyle => TextStyle(
        fontSize: 13.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray,
      );

  get joinMeetingTitleStyleBlue => TextStyle(
        fontSize: 19.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.blue,
      );

  get tajawalTitr20 => TextStyle(
        fontSize: 20.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray,
      );

  get customAppBarCancelText => TextStyle(
        fontSize: 14.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray,
      );

  get customAppBarNextText => TextStyle(
        fontSize: 14.0,
        height: 1,
        fontWeight: FontWeight.w700,
        color: Variable.colorVar.dark,
      );

  get littleTitleStyleBlue => TextStyle(
        fontSize: 18.0,
        height: 1,
        fontWeight: FontWeight.w800,
        color: Variable.colorVar.blue,
      );

  get littleTitleStyleGray => TextStyle(
        fontSize: 18.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.gray,
      );

  get errorInputSubtitleStyle => TextStyle(
        fontSize: 13.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.red,
      );

  get meetingTitleGreen => TextStyle(
        fontSize: 17,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.green,
      );

  get rightSideTextofMeetingCard => TextStyle(
        fontSize: 14,
        height: 1.2,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  get headerTitleStyleBlue => TextStyle(
        fontSize: 21.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.blue,
      );

  get headerTitleStyleGold => TextStyle(
        fontSize: 18.0,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.dark,
      );

  get textFormStyleWhite => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  get formButtonBlue => TextStyle(
        fontSize: 18,
        height: 1.5,
        color: Variable.colorVar.blue,
        fontWeight: FontWeight.w600,
      );

  get tajawalConterTitr20 => TextStyle(
        fontSize: 120.0,
        // height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.green,
      );

  get eventTitleBlue => meetingTitleBlue;

  get tajawalTitr14Bold => TextStyle(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.bgBlackHeader,
      );

  get tajawalTitr16BoldBlack => TextStyle(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

  get primary100bold600size24 => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.primaryColor,
      );

  get grey100bold600size24 => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      );

  get slideUpCancel => TextStyle(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w400,
        color: Variable.colorVar.gray,
      );

  get slideUpSave => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w500,
        color: Variable.colorVar.blue,
      );

  get textButtonStyle => TextStyle(
      fontSize: 14,
      height: 1,
      fontWeight: FontWeight.w700,
      color: Variable.colorVar.darkest);

  get red14Style => TextStyle(
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Colors.red,
      );

  get dark16Style => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Variable.colorVar.dark,
      );

  get textStyle => TextStyle(
        fontSize: 12.0,
        height: 2,
        fontWeight: FontWeight.w500,
        color: Variable.colorVar.blue,
      );
}
