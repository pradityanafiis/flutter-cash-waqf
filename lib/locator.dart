import 'package:flutter_cash_waqf/services/auth_service.dart';
import 'package:flutter_cash_waqf/services/category_service.dart';
import 'package:flutter_cash_waqf/services/laporan_service.dart';
import 'package:flutter_cash_waqf/services/riwayat_wakaf_service.dart';
import 'package:flutter_cash_waqf/services/wakaf_abadi_service.dart';
import 'package:flutter_cash_waqf/services/wakaf_berjangka_service.dart';
import 'package:flutter_cash_waqf/services/waqf_program_service.dart';
import 'package:get_it/get_it.dart';

GetIt _getIt = GetIt.instance;

void setupLocator() {
  _getIt.registerFactory<AuthService>(() => AuthService());
  _getIt.registerFactory<CategoryService>(() => CategoryService());
  _getIt.registerFactory<WaqfProgramService>(() => WaqfProgramService());
  _getIt.registerFactory<LaporanService>(() => LaporanService());
  _getIt.registerFactory<WakafAbadiService>(() => WakafAbadiService());
  _getIt.registerFactory<WakafBerjangkaService>(() => WakafBerjangkaService());
  _getIt.registerFactory<RiwayatWakafService>(() => RiwayatWakafService());
}
