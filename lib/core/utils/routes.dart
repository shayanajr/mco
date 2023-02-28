// import 'package:mco/screen/account_screen/profile_edit_screen.dart';
// import 'package:mco/screen/home_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:mco/screen/auth_screen/login_via_otp_screen.dart';
// import 'package:mco/screen/auth_screen/login_via_password_screen.dart';
// import 'package:page_transition/page_transition.dart';
//
// class Routes {
//   static int transactionDuration = 0;
//   static int transactionReverseDuration = 0;
//
//   static String search = '/search';
//   static String landmarkList = '/landmark_list';
//   static String landmarkDetail = '/landmark_detail';
//
//   static Route? onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/welcome-intro':
//         return PageTransition(
//           child: Container(),
//           type: PageTransitionType.bottomToTop,
//           duration: Duration(milliseconds: transactionDuration),
//           reverseDuration: Duration(milliseconds: transactionReverseDuration),
//         );
//
//
//       case '/login_via_password':
//         return PageTransition(
//           child: LoginViaPassword(),
//           type: PageTransitionType.bottomToTop,
//           duration: Duration(milliseconds: transactionDuration),
//           reverseDuration: Duration(
//             milliseconds: transactionReverseDuration,
//           ),
//         );
//
//       case '/login_via_otp':
//         return PageTransition(
//           child: LoginViaOtpScreen(),
//           type: PageTransitionType.bottomToTop,
//           duration: Duration(milliseconds: transactionDuration),
//           reverseDuration: Duration(
//             milliseconds: transactionReverseDuration,
//           ),
//         );
//
//
//
//       case '/profile_screen':
//         return PageTransition(
//           child: ProfileScreen(),
//           type: PageTransitionType.bottomToTop,
//           duration: Duration(milliseconds: transactionDuration),
//           reverseDuration: Duration(
//             milliseconds: transactionReverseDuration,
//           ),
//         );
//
//       case '/home_screen':
//         return PageTransition(
//           child: const HomeScreen(),
//           type: PageTransitionType.bottomToTop,
//           duration: Duration(milliseconds: transactionDuration),
//           reverseDuration: Duration(
//             milliseconds: transactionReverseDuration,
//           ),
//         );
//
//       default:
//         return null;
//     }
//   }
// }
