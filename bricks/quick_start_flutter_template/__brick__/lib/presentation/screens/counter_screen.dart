import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:my_test_bill_application/config/router/app_router.dart';
import 'package:my_test_bill_application/config/router/app_routes.dart';
import 'package:my_test_bill_application/logic/blocs/counter/counter_bloc.dart';
import 'package:my_test_bill_application/logic/blocs/counter/counter_event.dart';
import 'package:my_test_bill_application/logic/blocs/counter/counter_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => CounterBloc(),
        child: BlocConsumer<CounterBloc, CounterState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Counter App',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '${state is CounterChanged ? state.counter : 0}',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        child: const Icon(Icons.remove),
                        onPressed: () =>
                            context.read<CounterBloc>().add(DecrementEvent()),
                      ),
                      const SizedBox(width: 20),
                      FloatingActionButton(
                        child: const Icon(Icons.add),
                        onPressed: () =>
                            context.read<CounterBloc>().add(IncrementEvent()),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          listener: (context, state) {
            if (state is CounterChanged) {
              if (state.counter % 5 == 0) {
                AppRouter.navigateWithErrorScreen(
                  context: context,
                  duration: const Duration(seconds: 1),
                  targetRoute: AppRoutes.counter,
                );
              }
            }
          },
        ),
      ),
    );
  }
}
