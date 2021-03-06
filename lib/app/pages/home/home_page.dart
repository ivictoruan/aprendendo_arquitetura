import 'package:aprendendo_arquitetura/app/pages/home/components/custom_switch_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
           CustomSwitchWidget(),
        ],
      ),
      // body: const Center(
      //   child: CustomSwitchWidget(),
      // ),
    );
  }
}