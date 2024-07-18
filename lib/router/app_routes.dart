
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/screens/screens.dart';

import '../models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list_rounded),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.alarm),
    MenuOption(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Avatar Circulo', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

    for (var option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen});
    }
    return appRoutes;
  }

    static Map<String, IconData Function(BuildContext)> getAppIcons(){
    Map<String, IconData Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.icon});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : ( BuildContext context ) => const HomeScreen(),
  //   'listview1': ( BuildContext context ) => const Listview1Screen(),
  //   'listview2': ( BuildContext context ) => const Listview2Screen(),
  //   'alert'    : ( BuildContext context ) => const AlertScreen(),
  //   'card'     : ( BuildContext context ) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) { //por si intentamos acceder a una route que no hemos definido en el main
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}