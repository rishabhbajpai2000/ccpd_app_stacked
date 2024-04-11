import 'package:flutter/material.dart';
import 'package:ccpd_app_stacked/app/app.bottomsheets.dart';
import 'package:ccpd_app_stacked/app/app.dialogs.dart';
import 'package:ccpd_app_stacked/app/app.locator.dart';
import 'package:ccpd_app_stacked/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://wdwtkrvlzdvakzcmoukf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indkd3RrcnZsemR2YWt6Y21vdWtmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIwNDA3NDcsImV4cCI6MjAxNzYxNjc0N30.GjHX7GDJJ_QMTEDBnj5TxmgntWaF_XBZRxKXwbjLfII',
  );
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
