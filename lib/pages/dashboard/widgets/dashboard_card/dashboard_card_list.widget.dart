import 'package:app_contatto/pages/dashboard/widgets/dashboard_card/dashboard_card.widget.dart';
import 'package:flutter/material.dart';

class DashBoardCardListWidget extends StatelessWidget {
  const DashBoardCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0,top: 15.0,right: 15.0,bottom: 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CardDashboardWidget(
                  imagem: 'assets/svgs/ionic-md-trophy.svg',
                  titulo: 'Copa dos Motoristas',
                  color: Color(0xFF6D6E71),
                  backgroundColor: Color(0xFFFFFFFF),
                  callback: (){},
              ),
                ),),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CardDashboardWidget(
                  imagem: 'assets/svgs/icon-metas.svg',
                  titulo: 'Metas Operacionais',
                  color: Color(0xFF6D6E71),
                  backgroundColor: Color(0xFFFFFFFF),
                  callback: (){},
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
                  child: CardDashboardWidget(
                  imagem: 'assets/svgs/awesome-star.svg',
                  titulo: 'Pontuação Extra',
                  color: Color(0xFF6D6E71),
                  backgroundColor: Color(0xFFFFFFFF),
                  callback: (){},
              ),
                ),),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CardDashboardWidget(
                  imagem: 'assets/svgs/icone-pad.svg',
                  titulo: 'P.A.D.',
                  color: Color(0xFF6D6E71),
                  backgroundColor: Color(0xFFFFFFFF),
                  callback: (){},
              ),
              ),),
            ],
          ),
        ],
      ),
    );
  }
}