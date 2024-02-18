import 'package:app_contatto/pages/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserController extends GetxController{
  
  UserController();

  // Usuário autorizado e autenticado para usar a aplicação
  bool isAuth = false;
  
  // Dados de usuário
  Map<String,dynamic> userData = {};
  RxString nome = ''.obs;
  RxString avatar = ''.obs;
  String usuario_id = '';
  RxString usuario_status = 'online'.obs;

  void auth_login(String username, String passwd) async{
    
    try{
      // Faz Instância do nosso banco
      var db = FirebaseFirestore.instance;

      // Faz uma query procurando os dados de usuário e senha do nosso banco
      var query = await db.collection("ld_usuarios").where('usuario',isEqualTo: username).where('senha',isEqualTo: passwd).get();
      
      // Guarda nossos Dados iniciais em um mapa
      Map<String,dynamic> userlogin = query.docs.first.data();
      usuario_id = query.docs.first.id;
      
      // Salva nossos dados de usuário na memória  
      initialize_user(userlogin);
      
      // Avisa o nosso usuário que a operação foi um sucesso
      Get.snackbar('Sucesso!', 'Você logou em nosso sistema.',backgroundColor: Colors.green,colorText: Colors.white, borderRadius: 7, padding: EdgeInsets.all(15));
      
      // Redireciona á tela de Dashboard com nossos dados de usuários salvos na memória
      Get.offAll(() => DashboardPage());

    }catch(error){
      
      print('Erro: $error');
      Get.snackbar('Erro!', 'usuário e/ou senha inválidos, cheque suas credenciais e tente novamente.',backgroundColor: Color(0xFFFC3051), colorText: Colors.white,borderRadius: 7, padding: EdgeInsets.all(15));

    }
    
  }

  // Função para atualizar o status do nosso usuário
  void change_status( String status ) async{

      // Faz Instância do nosso banco
      FirebaseFirestore db = FirebaseFirestore.instance;

      // Faz uma query procurando os dados de usuário e senha do nosso banco e espera por novas alterações
      var query = await db.collection("ld_usuarios").doc(usuario_id).update({
        'status' : status
      });
  }

  // Função de Usuário para atualizar nossos dados de Usuário em tempo real (apenas dados em Stream)
  void user_observe() async{

      // Faz Instância do nosso banco
      FirebaseFirestore db = FirebaseFirestore.instance;

      // Faz uma query procurando os dados de usuário e senha do nosso banco e espera por novas alterações
      var query = await db.collection("ld_usuarios").where('usuario',isEqualTo: userData['usuario']).where('senha',isEqualTo: userData['senha']).snapshots().listen((event) {

        // Caso ocorra alguma alteração nos dados de usuario, os dados de usuário são atualizados
        var novos_dados = event.docs.first.data();
        nome.value = novos_dados['nome'];
        usuario_status.value = novos_dados['status'];

      },onError: (error){

        print('Ocorreu um erro: $error');

      });

  }

  void initialize_user( Map<String,dynamic> data) {
    userData = data;
    nome.value = userData['nome'];
    avatar.value = userData['avatar'];
    usuario_status.value = userData['status'];
  }

}