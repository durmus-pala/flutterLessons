import 'package:flutter/material.dart';
import 'package:flutter_pokedex_app/pages/home_page.dart';
import 'package:flutter_pokedex_app/services/pokedex_api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemonData();
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        theme:
            ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        // ignore: prefer_const_constructors
        home: HomePage(),
      ),
    );
  }
}
