// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class DarkTheme extends StatefulWidget {
//   const DarkTheme({Key? key}) : super(key: key);

//   @override
//   State<DarkTheme> createState() => _DarkThemeState();
// }

// class _DarkThemeState extends State<DarkTheme> {
//   ThemeData _darkTheme = ThemeData(
//     accentColor: Colors.red,
//     brightness: Brightness.dark,
//     primaryColor: Colors.amber,
//   );
//   ThemeData _lightTheme =
//       ThemeData(buttonColor: Colors.amber, disabledColor: Colors.black);

//   bool _light = true;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: _light ? _lightTheme : _darkTheme,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Dark theme"),
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(Icons.arrow_back)),
//         ),
//         body: Center(
//             child: Switch(
//                 value: _light,
//                 onChanged: (state) {
//                   setState(() {
//                     _light = state;
//                   });
//                 })),
//       ),
//     );
//   }
// }
