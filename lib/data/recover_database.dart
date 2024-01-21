import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

// import '../models/user/logging_session.dart';

class RecoverDatabase extends GetxController {
  final _recoverDB = GetStorage();
  final _logger = Logger(filter: null);

  initDatabase() async {
    await GetStorage.init();
  }

/*  Future<LoggingSession> storeLoggingSession(LoggingSession loggingSession) async {
    try {
      _recoverDB.write('logging_session', loggingSession.toJson());

      Map<String, dynamic> sessionData = await _recoverDB.read('logging_session');

      // _logger.i('Logging Session Created !');

      return LoggingSession.fromJson(sessionData);
    } catch (e) {
      _logger.e(e);
      return LoggingSession('', '', '', '', '', '', '');
    }
  }*/

/*  Future<LoggingSession> getLoggingSession() async {
    try {
      Map<String, dynamic> sessionData = await _recoverDB.read('logging_session');
      if (sessionData.isEmpty) {
        _logger.w('You are Not Login. Please Login Again !');
        return LoggingSession('', '', '', '', '', '', '');
      } else {
        return LoggingSession.fromJson(sessionData);
      }
    } catch (e) {
      _logger.e(e);
      return LoggingSession('', '', '', '', '', '', '');
    }
  }*/

/*  Future<void> destroySession() async {
    try {
      _recoverDB.write('logging_session', LoggingSession('', '', '', '', '', '', '').toJson());
      _logger.w('Logging Session Destroyed !');
    } catch (e) {
      _logger.e(e);
    }
  }*/
}
