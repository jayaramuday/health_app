import 'package:flutter/material.dart';
import 'package:health_app/widget/background_painter.dart';
import 'package:health_app/widget/google_signup_button_widget.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            CustomPaint(painter: BackgroundPainter()),
            buildSignUp(),
          ],
        ),
      );

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: Text(
                'Welcome Back To HealthCare',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          // Text(
          //   'Login to continue',
          //   style: TextStyle(fontSize: 16),
          // ),
          Spacer(),
        ],
      );
}


// import 'package:flutter/material.dart';
// import 'package:my_app/widget/background_painter.dart';
// import 'package:my_app/widget/google_signup_button_widget.dart';

// class SignUpWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Stack(
//         fit: StackFit.expand,
//         children: [
//           CustomPaint(painter: BackgroundPainter()),
//           buildSignUp(),
//         ],
//       );

//   Widget buildSignUp() => Column(
//         children: [
//           Spacer(),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               width: 175,
//               child: Text(
//                 'Welcome Back To HealthCare',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Spacer(),
//           GoogleSignupButtonWidget(),
//           SizedBox(height: 12),
//           Text(
//             'Login to continue',
//             style: TextStyle(fontSize: 16),
//           ),
//           Spacer(),
//         ],
//       );
// }