import 'package:get/get.dart';
import 'package:ueepro/model/electronical_model.dart';
import 'package:ueepro/services/electronical_services.dart';

class ElectronicalController extends GetxController {
  // ignore: deprecated_member_use
  var electronicalList = List<Electronical>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchElectronicals();
    super.onInit();
  }

  void fetchElectronicals() async {
    try {
      isLoading(true);
      var electronicals = await ElectronicalServices.fetchElectronicalData();
      if (electronicals != null) {
        electronicalList.assignAll(electronicals);
      }
    } finally {
      isLoading(false);
    }
  }
}
