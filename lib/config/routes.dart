import 'package:flutter/material.dart';
import '../screen/screen.dart';

class Routes {
  static const String signUp = '/sign_up';
  static const String signIn = '/sign_in';
  static const String chooseTopic = '/choose_topic';
  static const String reminders = '/reminders';
  static const String menu = '/menu';
  static const String playOption = '/play_option';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case chooseTopic:
        return MaterialPageRoute(builder: (_) => const ChoseTopicPage());
      case reminders:
        return MaterialPageRoute(builder: (_) => const RemindersPage());
      case menu:
        return MaterialPageRoute(builder: (_) => const MenuPage());
      case playOption:
        return MaterialPageRoute(builder: (_) => const PlayOnPage());
      case '/':
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Routes'),
                    centerTitle: true, // Judul di tengah
                  ),
                  body: const Center(
                    child: Text('Routes Not Found'),
                  ),
                ));
    }
  }
}
