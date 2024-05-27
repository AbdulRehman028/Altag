import 'package:hive_flutter/adapters.dart';

import '../../Constants/strings.dart';

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(AppStrings.configBox);
  }
}

class AppStorage {
  //? config
  final _configBox = Hive.box(AppStrings.configBox);

  Future<void> deleteConfigBox() async {
    await _configBox.deleteFromDisk();
  }

  Future<void> setIsFirstOpen(bool value) async {
    await _configBox.put(AppStrings.isFirstOpen, value);
  }

  bool get isFirstOpen => _configBox.get(AppStrings.isFirstOpen) ?? true;

  Future<void> setIsSoundEnabled(bool value) async {
    await _configBox.put(AppStrings.isSoundEnabled, value);
  }

  bool? get isSoundEnabled => _configBox.get(AppStrings.isSoundEnabled);

  Future<void> setIsNotificationEnabled(bool value) async {
    await _configBox.put(AppStrings.isNotificationEnabled, value);
  }

  bool? get isNotificationEnabled => _configBox.get(AppStrings.isNotificationEnabled);

  Future<void> setIsOnboardingDone(bool value) async {
    await _configBox.put(AppStrings.isOnboardingDone, value);
  }

  bool? get isOnboardingDone => _configBox.get(AppStrings.isOnboardingDone);


  static const String _isNewUserKey = 'isNewUser';

  // Set the isNewUser flag using Hive
  Future<void> setIsNewUser(bool value) async {
    await _configBox.put(_isNewUserKey, value);
  }

  // Get the isNewUser flag using Hive
  bool isNewUser() {
    return _configBox.get(_isNewUserKey) ?? false;
  }






}
