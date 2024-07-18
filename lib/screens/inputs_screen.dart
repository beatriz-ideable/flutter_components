import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre'    : 'Beatriz',
      'apellido'  : 'Barber',
      'correo'    : 'bea@gmail.com',
      'password'  : '123456',
      'rol'       : 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
         title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
            
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'nombre', formValues: formValues ),
                const SizedBox(height: 30),
            
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'apellido', formValues: formValues ),
                const SizedBox(height: 30),
                
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'correo', formValues: formValues ),
                const SizedBox(height: 30),
               
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues: formValues ),
                const SizedBox(height: 30),
            
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: const Text('Guardar'))
                  ),
                  
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() ); // Oculta el teclado

                    if (!myFormKey.currentState!.validate() ){ //! para afirma que siempre vamos a tener un currentState
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                  },
                  
                )
              ],),
          ),
         ),
      ),
    );
  }
}