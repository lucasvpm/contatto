import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScaffoldController extends GetxController{
    
    final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey();

    void drawer_toggle(){
       scaffoldkey.currentState!.openEndDrawer();
    }
    
}