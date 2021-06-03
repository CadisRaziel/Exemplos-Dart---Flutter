import 'package:flutter/material.dart';

import '../core/app_text_styles.dart';

class RadionButton extends StatefulWidget {
  @override
  _RadionButtonState createState() => _RadionButtonState();
}

class _RadionButtonState extends State<RadionButton> {

  bool _estadoSelecionado = false;
  bool _selecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appTextStyle é a classe criada dentro de 'core' aonde esta nossa fonte
        title: Text('CheckBoxList', style: AppTextStyles.titleJP),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 50),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent.withOpacity(1),
              //spreadRadius = aumenta o shadow
              spreadRadius: 15,

              //blurRadius = deixa mais claro o shadow
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [            
            //diferente do CheckBox normal
            //esse checkboxListTile conseguimos adicionar mais configurações
            CheckboxListTile(
              title: Text('Comida Inglesa'),
              subtitle: Text('A melhor do mundo'),
              //secondary = para por icons
              secondary: Icon(Icons.access_alarms),
              //activeColor = muda a cor da box de selecionar!
              activeColor: Colors.red,
              //Selected = deixa o texto como marcado com a cor do activeColor(faça da forma que eu fiz !)              
              selected: _selecionado,
              value: _estadoSelecionado,
               onChanged: (bool? valor){
                 setState(() {
                   _estadoSelecionado = valor!;  
                   _selecionado = valor;                
                 });
               }
               ),
          ],
        ),
      ),
    );
  }
}
