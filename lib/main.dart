import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta/pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const HomePage());
}