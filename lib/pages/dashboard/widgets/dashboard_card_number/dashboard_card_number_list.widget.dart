import 'package:app_contatto/controllers/estatisticas_frota/estatisticas_frota.controller.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_card/dashboard_card.widget.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_card_number/dashboard_card_number.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumberCardListWidget extends StatelessWidget {
  NumberCardListWidget({super.key});
  
  EstatisticasFrotaController estatisticas_controller = Get.put(EstatisticasFrotaController());

  @override
  Widget build(BuildContext context) {
    
    estatisticas_controller.initialize_dados();
    estatisticas_controller.update_dados();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 5),
      child: Obx( () =>
         Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NumbersCardWidget(
                    imagem: 'assets/svgs/feather-user.svg',
                    titulo: 'Motoristas',
                    numero: estatisticas_controller.motoristas.value,
                    color: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF0092F9),
                ),
                  ),),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NumbersCardWidget(
                    imagem: 'assets/svgs/material-people-outline.svg',
                    titulo: 'Agregados',
                    numero: estatisticas_controller.agregados.value,
                    color: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFF8BBC00),
                ),
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NumbersCardWidget(
                    imagem: 'assets/svgs/feather-truck.svg',
                    titulo: 'Frota própria',
                    numero: estatisticas_controller.frota_propria.value,
                    color: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFFF58B1C),
                ),
                  ),),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: NumbersCardWidget(
                    imagem: 'assets/svgs/feather-alert-triangle.svg',
                    titulo: 'Acidentes',
                    numero: estatisticas_controller.acidentes.value,
                    color: Color(0xFFFFFFFF),
                    backgroundColor: Color(0xFFE20000),
                ),
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}