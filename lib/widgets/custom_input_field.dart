import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key, 
    this.labelText, 
    this.hintText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType,
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words, // Escribe en mayúsculas la primera letra de cada palabra
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: ( value ){
        formValues[formProperty] = value; // Muestra el valor del TextFormField en la consola
      },
      validator: (value) {
        if ( value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Este campo es requerido' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        //counterText: '3 caracteres',
        //prefixIcon: Icon( Icons.verified_user_outlined ),
        suffixIcon: suffixIcon == null ? null : Icon( suffixIcon ),
        icon: icon == null ? null : Icon( icon ), // si el icono es nulo no se muestra nada, sino se muestra el icono recibido
        //border en app_theme.dart
      )
    
    );
  }
}