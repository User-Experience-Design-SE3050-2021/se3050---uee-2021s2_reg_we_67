import 'package:get/get.dart';
import 'package:ueepro/model/kid_model.dart';
import 'package:ueepro/services/kid_services.dart';

class KidController extends GetxController {
  // ignore: deprecated_member_use
  var kidList = List<Kid>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchKids();
    super.onInit();
  }

  void fetchKids() async {
    try {
      isLoading(true);
      var kids = await KidServices.fetchKidData();
      if (kids != null) {
        kidList.assignAll(kids);
      }
    } finally {
      isLoading(false);
    }
  }
}
