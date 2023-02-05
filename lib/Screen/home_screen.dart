import 'package:figma_task/helper/all_task.dart';
import 'package:figma_task/helper/reminder_taks.dart';
import 'package:flutter/material.dart';

import '../helper/background_gradient.dart';
import '../helper/app_bar_screen.dart';
import '../helper/welcome_task.dart';

class HOmeScreen extends StatefulWidget {
  const HOmeScreen({super.key});

  @override
  State<HOmeScreen> createState() => _HOmeScreenState();
}

class _HOmeScreenState extends State<HOmeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 228, 228),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          children: [
            // --- start - background gradient --- //
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: BackGroundGradient(),
            ),
            // ---- end - background gradient --- //

            //--//

            // --- start - Appbar task --- //
            Positioned(
              top: 30,
              child: APpBarScren(),
            ),
            // --- end - Appbar task --- //

            //--//

            // --- start - Welcome Task --- //
            Positioned(
              top: 120.0,
              child: WelcomeTask(),
            ),
            // --- end - Welcome Task --- //

            //--//

            // --- start - Todo Image --- //
            Positioned(
              top: 170,
              right: 10,
              child: Image.asset(
                "assets/images/todoimage.png",
                height: 170,
                width: 130,
              ),
            ),
            // --- end - todo image --- //

            //--//
            // --- start - Reminder Task --- //
            Positioned(
              top: 310,
              child: ReminderTask(),
            ),
            // --- end - Reminder Task --- //

            //--//
            // --- start - All Task --- //
            Positioned(
              top: 480,
              child: AllTask(),
            ),
            // --- end - All Task --- //
          ],
        ),
      ),
    );
  }
}
