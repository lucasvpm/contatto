import 'package:app_contatto/controllers/scaffold/scaffold.controller.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_header/header_avatar/header_avatar.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardHeaderWidget extends StatelessWidget {
  
  DashboardHeaderWidget({super.key});

  ScaffoldController menu_controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      width: double.infinity,
      color: Color(0xFFF1F0F0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DashboardAvatarWidget(),
            IconButton(onPressed: menu_controller.drawer_toggle,
             icon: Icon(Icons.menu,size: 35,)
            )
          ],
        ),
    );
  }
}