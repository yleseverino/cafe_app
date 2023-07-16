import 'package:cafe_app/color_schemes.g.dart';
import 'package:cafe_app/data/coffe_repository.dart';
import 'package:cafe_app/presentantion/screens/home.dart';
import 'package:cafe_app/presentantion/state/order_coffe_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CoffeRepository()),
        ChangeNotifierProvider(create: (context) => OrderCoffeViewModel(Provider.of<CoffeRepository>(context, listen: false)))
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        home: const HomeScreen()
      ),
    );
  }
}

