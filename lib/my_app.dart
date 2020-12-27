import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/home_page.dart';

import 'api/api_client.dart';
import 'bloc/home_page_bloc.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc(
              (i) => HomePageBloc(i.getDependency<ApiClient>()),
          singleton: false,
        ),
      ],
      dependencies: [
        Dependency((i) => ApiClient(), singleton: true),
      ],
      child:MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}