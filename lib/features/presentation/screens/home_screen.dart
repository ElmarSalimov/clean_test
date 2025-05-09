import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_test/features/presentation/bloc/user_bloc.dart';
import 'package:clean_test/features/presentation/bloc/user_event.dart';
import 'package:clean_test/features/presentation/bloc/user_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: _controller),
            ElevatedButton(
              onPressed: () {
                context.read<UserBloc>().add(
                  GetUser(int.tryParse(_controller.text)!),
                );
              },
              child: Text("Load User"),
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is UserLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is UserLoaded) {
                  return Center(child: Text("User: ${state.user}"));
                } else if (state is UserError) {
                  return Center(child: Text("Error loading user"));
                }

                return SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
