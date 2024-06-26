// ignore_for_file: must_be_immutable

import 'package:basketball_point/cubit/counter_cubit.dart';
import 'package:basketball_point/cubit/counter_state.dart';
import 'package:basketball_point/widgets/buttonBuild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class columnTeamABulid extends StatelessWidget {
  const columnTeamABulid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 22),
            const Text(
              "Team A",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 202, 94, 5),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              BlocProvider.of<CounterCubit>(context).scoreA.toString(),
              style: const TextStyle(
                fontSize: 110,
                color: Color.fromARGB(255, 172, 92, 6),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buttonBuild(
              adder: 'add 1 point',
              function: () {
                BlocProvider.of<CounterCubit>(context)
                    .incrementScore(score: 1, isTeamA: true);
              },
            ),
            buttonBuild(
              adder: 'add 2 point',
              function: () {
                BlocProvider.of<CounterCubit>(context)
                    .incrementScore(score: 2, isTeamA: true);
              },
            ),
            buttonBuild(
              adder: 'add 3 point',
              function: () {
                BlocProvider.of<CounterCubit>(context)
                    .incrementScore(score: 3, isTeamA: true);
              },
            ),
          ],
        );
      },
      listener: (context, state) {},
    );
  }
}
