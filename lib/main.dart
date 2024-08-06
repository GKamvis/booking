import 'package:flutter/material.dart';
import 'package:myapp/ui/views/bottom_nav_bar.dart';
import 'package:myapp/ui/views/get_started_page.dart';
import 'package:myapp/ui/views/hotel_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool('seen');
  runApp(MyApp(seen: seen,));
}

class MyApp extends StatelessWidget {
  final bool? seen;
  const MyApp({super.key, this.seen});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: seen == true ? MyBottomNavigation(): const GetStartedPage(),
      routes: {
        '/hotelDetails': (context) => const HotelDetails(),
        '/bottomNavBar': (context) => MyBottomNavigation(),       
      },
      
    );
  }
}
