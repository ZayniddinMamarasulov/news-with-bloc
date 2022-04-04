import 'package:bloc_sample/bloc/counter_cubit.dart';
import 'package:bloc_sample/bloc/news_bloc.dart';
import 'package:bloc_sample/data/repository/news_repo.dart';
import 'package:bloc_sample/screens/home_page.dart';
import 'package:bloc_sample/screens/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => NewsBloc(NewsRepositoryImpl()),
        child: NewsPage(),
      ),
    );
  }
}
