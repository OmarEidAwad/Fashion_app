import 'package:fashion/core/di/dependency_injection.dart';
import 'package:fashion/run_way_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await setupGetIt();
  runApp(const RunWayApp());
}
