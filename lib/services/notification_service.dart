import 'dart:convert';

import 'package:ccpd_app_stacked/app/app.logger.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:http/http.dart' as http;

class NotificationService {
  final _logger = getLogger("NotificationService");
  final userId = Supabase.instance.client.auth.currentUser?.id;
  Future<void> initOneSignal() async {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize("5fea9495-f84e-4953-a0c1-fca3fbf37194");
    OneSignal.Notifications.requestPermission(true);
    await OneSignal.login(userId!);
  }

  Future<void> sendNotification({
    required List<String> users,
    required String title,
    required String description,
   required Map<String, dynamic> data,
  }) async {
    Map<String, dynamic> body = {
      "app_id": "1be38fba-04b1-4b93-a3c6-7656329481f3",
      "include_aliases": {
        "external_id": users
      },
      "headings": {"en": title},
      "target_channel": "push",
      "contents": {"en": description},
      "data": data
    };
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Basic ODViNWE5ODYtYmIxZS00NjAzLWIzOGYtNDY4MDI5MTYzMWEx",
      "Host": "api.onesignal.com",
    };

    final response = await http.post(
      Uri.parse("https://api.onesignal.com/notifications"),
      headers: headers,
      body: jsonEncode(body),
    );
    _logger.i(response.body);
  }
}
