
import 'package:app_contatto/utils/random_string_generator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AccordionWidget extends StatelessWidget {

  // Dados para nosso widget receber
  Widget conteudo;
  String titulo;
  
  AccordionWidget({ Key? key, required this.titulo, required this.conteudo} ): super(key: key);

  // Dados de medida para nosso acordeão
  RxBool isOpen = false.obs;
  RxBool isInitilized = false.obs;

  RxDouble? content_height = 0.0.obs, current_height = 0.0.obs;
  RxInt animation_duration = 0.obs;
  RxDouble content_margin_top = 0.0.obs;

  // Pega o tamanho inicial do widget abrigado no acordeão e zera a altura do mesmo
  void initialize_height(double? height){
    content_height!.value = height!;
    current_height!.value = 0;
    animation_duration.value = 200;
    isInitilized.value = true;
  }
  
  // Muda o estado de nosso acordeão para aberto ou fechado
  void toggle_content(){
    if(isOpen.value == false){
      current_height!.value = content_height!.value;
      isOpen.value = true;
      content_margin_top.value = 12;
    }else{
      current_height!.value = 0;
      isOpen.value = false;
      content_margin_top.value = 0;
    }    
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Obx(() => GestureDetector(
              onTap: () => toggle_content(),
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                      offset: Offset(0,3),
                      blurRadius: 3 
                    )
                  ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(titulo,
                      style: TextStyle(
                        color: Color(0xFF4C4D4E),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                        Text( isOpen.value == true ? '-' : '+',
                        style: TextStyle(
                          color: Color(0xFF4C4D4E),
                          fontWeight: FontWeight.w900,
                          fontSize: 40
                        ),),
                    ],
                  )
                ),
            ),
          ),
            LayoutBuilder(builder: (context,constraints) {

              // Pega o tamanho do widget no primeiro frame em que é renderizado
              SchedulerBinding.instance.addPostFrameCallback((_) => initialize_height(context.size?.height));

              return Obx(() => 
                AnimatedContainer(
                  margin: EdgeInsets.only(top: content_margin_top.value),
                  padding: EdgeInsets.all(15),
                  height: isInitilized.value == false ? null : current_height!.value,
                  color: Colors.white,
                  duration: Duration(milliseconds: animation_duration.value),
                  child: conteudo,
                )
              );
              
            }
            )

            ]),
    );
  }
}