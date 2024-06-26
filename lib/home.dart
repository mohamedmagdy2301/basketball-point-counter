// ignore_for_file: camel_case_types

import 'package:basketball_point/cubit/counter_cubit.dart';
import 'package:basketball_point/widgets/buttonBuild.dart';
import 'package:basketball_point/widgets/teamA.dart';
import 'package:basketball_point/widgets/teamB.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 202, 94, 5),
        title: const Text(
          "Basketball Point Counter",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              columnTeamABulid(),
              columnTeamBBulid(),
            ],
          ),
          buttonBuild(
            adder: 'Reset',
            function: () {
              BlocProvider.of<CounterCubit>(context).resetScore();
            },
          ),
        ],
      ),
    );
  }
}
