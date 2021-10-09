import 'package:get/get.dart';
import 'package:ueepro/model/beauty_model.dart';
import 'package:ueepro/services/beauty_services.dart';

class BeautyController extends GetxController {
  // ignore: deprecated_member_use
  var beautyList = List<Beauty>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchBeautys();
    super.onInit();
  }

  void fetchBeautys() async {
    try {
      isLoading(true);
      var beautys = await BeautyServices.fetchBeautyData();
      if (beautys != null) {
        beautyList.assignAll(beautys);
      }
    } finally {
      isLoading(false);
    }
  }
}
