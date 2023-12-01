import 'package:crud_version1/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:crud_version1/text_box.dart';

class RegisterContact extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegisterContact();

}

class _RegisterContact extends State<RegisterContact> {
  late TextEditingController controllerName;
  late TextEditingController controllerSurname;
  late TextEditingController controllerPhone;

  @override
  void initState() {
    controllerName = TextEditingController();
    controllerSurname = TextEditingController();
    controllerPhone = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Contactos"),
      ),
      body: ListView(
        children: [
          TextBox(controllerName, "Nombre"),
          TextBox(controllerSurname, "Apellido"),
          TextBox(controllerPhone, "Teléfono"),

          ElevatedButton(onPressed: () {
            String name = controllerName.text;
            String surname = controllerSurname.text;
            String phone = controllerPhone.text;

            if(name.isNotEmpty && surname.isNotEmpty && phone.isNotEmpty){
              Navigator.pop(context, new Client(name: name, surname: surname, phone: phone));
            }

          }, 
            child: Text("Guardar Contacto")
          ),

          ],
      )
    );

  }

}