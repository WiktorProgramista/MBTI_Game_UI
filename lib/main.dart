import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mbti_game/cubit/theme_cubit.dart';
import 'package:mbti_game/my_home_page.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  runApp(MyMbtiApp());
}

class MyMbtiApp extends StatefulWidget {
  const MyMbtiApp({ Key? key }) : super(key: key);

  @override
  _MyMbtiAppState createState() => _MyMbtiAppState();
}

class _MyMbtiAppState extends State<MyMbtiApp> {

  @override

  final ThemeData _lightTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('#10ac84'),
  );

  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, String>(
        builder: (context, state){
          return MaterialApp(
            themeMode: state == "Systemowy" ? ThemeMode.system : state == "Jasny" ? ThemeMode.light : ThemeMode.dark,
            theme: _lightTheme,
            darkTheme: ThemeData.dark(),
            title: "Mbti App",
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}