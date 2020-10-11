import 'package:logger/logger.dart';
import 'my_log_printer.dart';

class LoggerProvider {
  static Logger getLogger(String className) {
    return Logger(printer: MyLogPrinter(className: className));
  }
}
