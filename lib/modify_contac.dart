import 'package:crud_version1/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:crud_version1/text_box.dart';

class ModifyContact extends StatefulWidget{
  final Client _client;
  ModifyContact(this._client);
  @override
  State<StatefulWidget> createState() => _ModifyContact();

}

class _ModifyContact extends State<ModifyContact>{

  late TextEditingController controllerName;
  late TextEditingController controllerSurname;
  late TextEditingController controllerPhone;

  @override
  void initState() {
    Client c = widget._client;
    controllerName = TextEditingController(text: c.name);
    controllerSurname = TextEditingController(text: c.surname);
    controllerPhone = TextEditingController(text: c.phone);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Modificar Contacto"),
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
        ]
      ),
    );
  }

}