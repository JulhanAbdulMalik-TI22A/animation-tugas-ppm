import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pisa_academy/screens/bottom_nav_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(45),
                child: Image.asset('assets/images/on-boarding.png')),
            const Text(
              'Selamat Datang di \nAplikasi PISA academy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Solusi Digital untuk Meningkatkan \nPrestasi Global!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,

                    // Animasi Page Transition
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: const Duration(milliseconds: 800),
                      child: BottomNavScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 61, 143, 239),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Mulai",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 10),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:pisa_academy/screens/bottom_nav_screen.dart';

// class Onboarding extends StatelessWidget {
//   const Onboarding({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//                 padding: const EdgeInsets.all(45),
//                 child: Image.asset('assets/images/on-boarding.png')),
//             const Text(
//               'Selamat Datang di \nAplikasi PISA academy',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Solusi Digital untuk Meningkatkan \nPrestasi Global!',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 15),
//             ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     PageTransition(
//                       type: PageTransitionType.fade,
//                       duration: const Duration(milliseconds: 1000),
//                       child: BottomNavScreen(),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 61, 143, 239),
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 45),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text(
//                   "Mulai",
//                   style: TextStyle(fontSize: 15),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BottomNavScreenn extends StatelessWidget {
//   const BottomNavScreenn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text('Bottom Navigation')), // Contoh halaman tujuan
//       body: const Center(child: Text('Ini adalah halaman utama!')),
//     );
//   }
// }
