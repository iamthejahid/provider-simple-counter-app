import 'package:flutter/material.dart';
import 'package:flutter_simple_provider_app/widgets/stand_alone_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_simple_provider_app/providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Simple Provider App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                "You Have Pushed The button This Many Time: ${context.watch<Counter>().count} "),
            Divider(),
            Count(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
            key: Key('decrement_floating_action_button'),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().reset(),
            tooltip: 'reset',
            child: Icon(Icons.exposure_zero),
            key: Key('reset_floating_action_button'),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
            key: Key('increment_floating_action_button'),
          ),
        ],
      ),
    );
  }
}
