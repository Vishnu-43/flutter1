import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifier_pg.dart';
class CounterPageSample extends StatelessWidget {
  const CounterPageSample({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    final counter= Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Text(
          'You press button \n $count times',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,

        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: counter.increment,
      child: const Icon(Icons.plus_one),),
    );
  }
}
