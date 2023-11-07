import 'package:get_it/get_it.dart';
import 'app_router.dart';

final ls = GetIt.instance;

Future<void> setup() async {
  ls.registerSingleton<AppRouter>(AppRouter());

}
