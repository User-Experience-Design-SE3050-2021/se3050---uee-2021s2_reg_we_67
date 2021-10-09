import 'package:get/get.dart';
import 'package:ueepro/model/woman_model.dart';
import 'package:ueepro/services/woman_services.dart';

class WomanController extends GetxController {
  // ignore: deprecated_member_use
  var womanList = List<Woman>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchWomans();
    super.onInit();
  }

  void fetchWomans() async {
    try {
      isLoading(true);
      var womans = await WomanServices.fetchWomanData();
      if (womans != null) {
        womanList.assignAll(womans);
      }
    } finally {
      isLoading(false);
    }
  }
}
