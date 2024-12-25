import 'package:flutter/material.dart';
import 'package:pisa_academy/models/lesson_model.dart';
import 'package:pisa_academy/screens/bottom_nav_screen.dart';
import 'package:pisa_academy/screens/course_overview.dart';
import 'package:pisa_academy/screens/lessons_list.dart';
import 'package:pisa_academy/screens/onboarding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PISA academy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 12, 53, 106),
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 12, 53, 106),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 12, 53, 106),
            // size: 30,
          ),
        ),
      ),
      initialRoute: '/',

      //
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const Onboarding(),
            );
          case '/bottomNavScreen':
            return MaterialPageRoute(
              builder: (context) => BottomNavScreen(),
            );
          case '/courseOverview':
            final LessonModel lessonModel = settings.arguments as LessonModel;

            return MaterialPageRoute(
              builder: (context) => CourseOverview(lessonModel: lessonModel),
            );
          case '/lessonsList':
            return MaterialPageRoute(
              builder: (context) => const LessonsList(),
            );
        }

        return null;
      },
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OnBoardingScreen(),
//     );
//   }
// }

// class OnBoardingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.pinkAccent, Colors.blueAccent],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),

//           // Animated Button
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 60),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     PageRouteBuilder(
//                       pageBuilder: (_, __, ___) => NextScreen(),
//                       transitionsBuilder: (_, anim, __, child) {
//                         return FadeTransition(
//                           opacity: anim,
//                           child: ScaleTransition(
//                             scale: anim,
//                             child: child,
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//                 child: Hero(
//                   tag: 'startButton',
//                   child: Container(
//                     width: 200,
//                     height: 60,
//                     child: Center(
//                       child: Text(
//                         'Mulai',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NextScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//     );
//   }
// }
