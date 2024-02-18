import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EstatisticasFrotaController extends GetxController{
  
  RxInt acidentes = 0.obs, agregados = 0.obs, frota_propria = 0.obs, motoristas = 0.obs;

  void initialize_dados() async{

    try {

      // Faz Instância do nosso banco
      var db = FirebaseFirestore.instance;

      // Faz uma query procurando os dados do firebase
      var query = await db.collection("estatisticas_frota").doc('dados_gerais').get();

      Map<String,dynamic>? dados = query.data();

      acidentes.value = dados?['acidentes'];
      agregados.value = dados?['agregados'];
      frota_propria.value = dados?['frota_propria'];
      motoristas.value = dados?['motoristas'];

    } catch (e) {
      print(e);
    }

  }

  void update_dados() async{

    try {

    // Faz Instância do nosso banco
    FirebaseFirestore db = FirebaseFirestore.instance;

    // Faz uma query procurando os dados do firebase
      var query = await db.collection("estatisticas_frota").doc('dados_gerais').snapshots().listen((event) {
        Map<String,dynamic>? dados = event.data();
        acidentes.value = dados?['acidentes'];
        agregados.value = dados?['agregados'];
        frota_propria.value = dados?['frota_propria'];
        motoristas.value = dados?['motoristas'];
      });
      
    } catch (e) {
      print(e);
    }




  }


}