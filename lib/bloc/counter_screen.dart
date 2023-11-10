import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/bloc/couner_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc state management"),
        centerTitle: true,
      ),
      body: BlocBuilder<CounerBloc, CounerState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Count:${state.counterValue}", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    return context.read<CounerBloc>().add(IncrementEvent());
                  }, child: Text("+")),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(onPressed: () {
                    return context.read<CounerBloc>().add(DecrementEvent());
                  }, child: Text("-"))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
