// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'AnaSayfaGonderi.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category, size: 25,),
              label: 'Categories',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 25,),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle,size: 25,),
              label: 'Profil',
            ),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda Shop',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: <Widget>[
          //profiller
          Container(
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                ListeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(width: 20),
                ListeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(width: 20),
                ListeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(width: 20),
                ListeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(width: 20),
                ListeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(width: 20),
                ListeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              ],
            ),
          ),
          //card
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                AnasayfaGonderi(),
                 SizedBox(height: 15,),
                 AnasayfaGonderi(),
                 SizedBox(height: 15,),
                 AnasayfaGonderi(),
                
              ],
            ),

      
          ),
        ],
      ),
    );
  }

  Widget ListeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

