import  'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      initialRoute: WelcomeScreen.welcome,
      routes: {
        WelcomeScreen.welcome: (context) => WelcomeScreen(),
        LoginScreen.login : (context) => LoginScreen(),
        RegistrationScreen.regis : (context) => RegistrationScreen(),
        ChatScreen.chat : (context) => ChatScreen(),
      },
    );
  }
}