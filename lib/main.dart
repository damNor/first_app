import 'package:first_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'my_screen.dart';
import 'package:flutter/rendering.dart';

main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AplikasiKu",
      home: SplashScreen(),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int number = 0 ;
//
//   addNum(){
//     setState(() {
//       number++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Halaman Utama"),
//       ),
//       body: Column(
//         children: [
//           const Text("Angka yang sekarang ditampilkan"),
//           Text(number.toString()),
//           ElevatedButton(onPressed: (){ addNum(); }, child: const Text("Submit"))
//         ],
//       ),
//     );
//   }
// }

