// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DetaySayfasi extends StatefulWidget {
  var imgPath;
  DetaySayfasi({this.imgPath});
  //const DetaySayfasi({ Key? key }) : super(key: key);

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/dress.jpg',
                                  ),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5,),
                            const Text( 'Louis Vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Colors.grey,
                                  ),
                                  ),
                                  const SizedBox(height: 10,),
                                   // ignore: sized_box_for_whitespace
                                   Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width-260,
                                    child: const Text('One button V-neck sling ',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey,
                                    ), ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                           const Text('\$6500', style: TextStyle(fontFamily: 'Montserrat', fontSize: 22,),),
                           Container(
                             margin: const EdgeInsets.only(right: 20, ),
                             child: FloatingActionButton(
                               backgroundColor: Colors.brown.shade300,
                               child:  const Icon(Icons.arrow_forward_ios),
                               
                               onPressed: (){},
                             ),
                           ),
                        ],

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),

              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                   Center(child: Text('LAMİNATED', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white ),)),
                  Icon(Icons.arrow_forward_ios, color:Colors.white, size: 18,)
                ],
              ),
               
            ),
            
          ),
        ],
      ),
    );
  }
}
