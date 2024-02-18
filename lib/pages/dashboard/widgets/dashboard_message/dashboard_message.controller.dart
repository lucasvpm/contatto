import 'package:get/get.dart';

class DashboardMessageController extends GetxController{
  
  DashboardMessageController();

  RxBool message_open = true.obs;

  void close_message(){
    message_open.value = false;
  }
  
}