import 'package:bloc_sample/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter bloc"),
      ),
      body: BlocBuilder<CounterCubit, int>(
          builder: (context, count) => Center(
              child: Text(count.toString(),
                  style: const TextStyle(fontSize: 48)))),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().oshirish();
            },
            child: Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().kamaytirish();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
