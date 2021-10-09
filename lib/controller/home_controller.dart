import 'package:get/get.dart';
import 'package:ueepro/model/home_model.dart';
import 'package:ueepro/services/home_services.dart';

class HomeController extends GetxController {
  // ignore: deprecated_member_use
  var homeList = List<Home>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchHomes();
    super.onInit();
  }

  void fetchHomes() async {
    try {
      isLoading(true);
      var homes = await HomeServices.fetchHomeData();
      if (homes != null) {
        homeList.assignAll(homes);
      }
    } finally {
      isLoading(false);
    }
  }
}
