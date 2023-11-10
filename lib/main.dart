import 'package:flutter/material.dart';
import 'package:flutter1/Animation/animation1.dart';
import 'package:flutter1/Physicsanimation/physicsanimation1.dart';
import 'package:flutter1/Physicsanimation/physicsanimation2.dart';
import 'package:flutter1/Screens/Profile_page/payment_screen.dart';
import 'package:flutter1/Screens/Profile_page/profie_page.dart';
import 'package:flutter1/Screens/Table/productdetils.dart';
import 'package:flutter1/bloc/counter/bloc/couner_bloc.dart';
import 'package:flutter1/bloc/counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounerBloc(),
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
