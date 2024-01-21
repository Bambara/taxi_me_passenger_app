import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../api/rest/api_client.dart';
import '../../data/recover_database.dart';

class LoginController extends GetxController {
  final _logger = Logger(filter: null);

  final _rdbC = Get.put(RecoverDatabase());

  final _apiClient = ApiClient();

  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  void showTAC() async {
    try {
      const url = 'https://taxime.lk/privacy-policy/';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw "Could not launch $url";
      }
    } catch (e) {
      _logger.e(e);
    }
  }

  get rdbC => _rdbC;

  get userCtrl => _userCtrl;

  get passCtrl => _passCtrl;
}
