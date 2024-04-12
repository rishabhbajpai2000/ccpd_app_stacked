import 'package:flutter_test/flutter_test.dart';
import 'package:ccpd_app_stacked/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ProfileViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
