
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stepper/screen/stepper/provider/homeprovider.dart';
import 'package:stepper/screen/stepper/view/1.dart';



void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => screen(),
        },
      ),
    ),
  );
}