import 'package:flutter/material.dart';
import 'package:todoey/Providers/task_provider.dart';
import 'package:todoey/Screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAiKS_DtBKYMABn0A-HQySIx0fzodT_-n4",
        authDomain: "todoey-7f523.firebaseapp.com",
        projectId: "todoey-7f523",
        storageBucket: "todoey-7f523.appspot.com",
        messagingSenderId: "111422936116",
        appId: "1:111422936116:android:de55e9a8708283ff446661",
        measurementId: "G-S90KXZTXQY"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TaskProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
