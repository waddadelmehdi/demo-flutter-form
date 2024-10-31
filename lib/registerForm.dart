import 'package:flutter/material.dart';

class Registerform extends StatelessWidget {
   Registerform({super.key});
  TextEditingController name_controller=TextEditingController();
  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  TextEditingController confermepassword_controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: AppBar(
            title:const Text("Resgister form"),
          ),
          body: Form(child:
          Column(
            children: [
            TextFormField(
              controller: name_controller,
              onChanged: (value){
                print(value);
              },
              decoration: InputDecoration(icon: Icon(Icons.person),labelText: "Name"),),
            TextFormField(
              validator: (value){
                return '';
              },
              decoration: InputDecoration(icon: Icon(Icons.mail),labelText: "Email"),),
            SizedBox(height: 50.0,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(icon: Icon(Icons.person_2),labelText: "Password"),),
              TextFormField(decoration: InputDecoration(icon: Icon(Icons.person_2),labelText: "ConfimerPassword"),),
              ElevatedButton(onPressed: (){}, child: Text("Resgister"))
          ],)),
        );
  }
}
