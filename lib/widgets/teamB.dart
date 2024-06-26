// ignore_for_file: camel_case_types, must_be_immutable

import 'package:basketball_point/cubit/counter_cubit.dart';
import 'package:basketball_point/cubit/counter_state.dart';
import 'package:basketball_point/widgets/buttonBuild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class columnTeamBBulid extends StatelessWidget {
  const columnTeamBBulid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 22),
            const Text(
              "Team B",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 202, 94, 5),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              BlocProvider.of<CounterCubit>(context).scoreB.toString(),
              style: const TextStyle(
                fontSize: 110,
                color: Color.fromARGB(255, 172, 92, 6),
                //  Color.fromARGB(255, 243, 89, 33),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buttonBuild(
              adder: 'add 1 point',
              function: () {
                BlocProvider.of<CounterCubit>(context)
                    .incrementScore(score: 1, isTeamA: false);
              },
            ),
            buttonBuild(
              adder: 'add 2 point',
              function: () {
                BlocProvider.of<CounterCubit>(context)
                    .incrementScore(score: 2, isTeamA: false);
              },
            ),
            buttonBuild(
              adder: 'add 3 point',
              function: () {
                BlocProvider.of<CounterCubit>(context)
                    .incrementScore(score: 3, isTeamA: false);
              },
            ),
          ],
        );
      },
      listener: (context, state) {},
    );
  }
}
