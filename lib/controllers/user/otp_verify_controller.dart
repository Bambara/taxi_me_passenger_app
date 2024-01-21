import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../api/rest/api_client.dart';
import '../../data/recover_database.dart';

class OPTVerifyController extends GetxController {
  final _logger = Logger(filter: null);

  final _rdbC = Get.put(RecoverDatabase());

  final _apiClient = ApiClient();

  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  get rdbC => _rdbC;

  get userCtrl => _userCtrl;

  get passCtrl => _passCtrl;
}
