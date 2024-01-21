import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../api/rest/api_client.dart';
import '../../data/recover_database.dart';

class SplashController extends GetxController {
  final _logger = Logger(filter: null);

  final _rdbC = Get.put(RecoverDatabase());

  final _apiClient = ApiClient();
}
