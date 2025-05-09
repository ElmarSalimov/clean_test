import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_test/features/presentation/bloc/user_bloc.dart';
import 'package:clean_test/features/presentation/bloc/user_event.dart';
import 'package:clean_test/features/presentation/bloc/user_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen")),
      body: BlocBuilder<UsersBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is UserLoaded) {
            return Center(child: Text("User: ${state.user}"));
          } else if (state is UserError) {
            return Center(child: Text("Error loading user"));
          }

          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<UsersBloc>().add(GetUser());
              },
              child: Text("Load User"),
            ),
          );
        },
      ),
    );
  }
}
