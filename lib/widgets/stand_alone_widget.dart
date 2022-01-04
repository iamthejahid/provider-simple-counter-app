import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_simple_provider_app/providers/counter_provider.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("${context.watch<Counter>().count}");
  }
}
