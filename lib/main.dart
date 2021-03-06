import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_design_app/models/hotel_data.dart';
import 'package:hotel_design_app/screens/choice_overview_screen.dart';
import 'package:hotel_design_app/screens/details_screen.dart';
import 'package:hotel_design_app/screens/first_content_screen.dart';
import 'package:hotel_design_app/screens/second_content_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HotelData(),
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        home: ChoiceOverviewScreen(),
        routes: {
         FirstContentScreen.routeName: (context) => const FirstContentScreen(),
          SecondContentScreen.routeName: (context) => const SecondContentScreen(),
          DetailsScreen.routeName: (context) => const DetailsScreen(),
        },
      ),
    );
  }
}
