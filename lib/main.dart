// Import libs
import 'package:flutter/material.dart';
import 'package:learning/provider_consumer.dart';
import 'package:provider/provider.dart';

// Import Widget
import 'counter.dart';
import 'container_widget.dart';
import 'wrap_widget.dart';
import 'expanded_widget.dart';
import 'text_widget.dart';
import 'scaffold_widget.dart';
import 'button_widget.dart';
import 'grid_view.dart';
import 'snack_bar_widget.dart';
import 'state_provider.dart';
import 'provider_consumer.dart';

void main() {
  // runApp(const Counter());
  // runApp(const ContainerWidget());
  // runApp(const WrapWidget());
  // runApp(const ExpandedWidget());
  // runApp(const TextWidget());
  // runApp(const ScaffoldWidget());
  // runApp(const ButtonWidget());
  // runApp(const GridViewWidget());
  // runApp(const SnackBarWidget());
  //runApp(const StateProvider());

  // run app for state provider exercise
  // runApp(
  //   ChangeNotifierProvider(
  //     create: (_) => CounterProvider(),
  //     child: const MaterialApp(
  //       home: HomeScreen(),
  //     ),
  //   ),
  // );

  // run app for provider consumer exercise
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Gender()),
      ChangeNotifierProvider(create: (_) => Degree())
    ],
    child: const MaterialApp(
      home: HomePage(),
    ),
  ));
}
