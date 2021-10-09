import 'package:get/get.dart';
import 'package:ueepro/model/men_model.dart';
import 'package:ueepro/services/men_services.dart';

class MenController extends GetxController {
  // ignore: deprecated_member_use
  var menList = List<Men>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchMens();
    super.onInit();
  }

  void fetchMens() async {
    try {
      isLoading(true);
      var mens = await MenServices.fetchMenData();
      if (mens != null) {
        menList.assignAll(mens);
      }
    } finally {
      isLoading(false);
    }
  }
}
