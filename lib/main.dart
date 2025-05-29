import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/data/repository/user.dart';
import 'package:test/data/source/remote_source.dart';
import 'package:test/domain/use-case/getProfile.dart';
import 'package:test/presentation/bloc/profile_bloc.dart';
import 'package:test/presentation/screens/profile.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProfileBloc(
            getProfile: GetProfile(
              userRepository: UserRepositoryImpl(remoteSource: RemoteSource()),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.frauncesTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfileScreen(),
    );
  }
}
