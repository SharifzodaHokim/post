import 'package:flutter/material.dart';

import 'package:post/rat.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
    List<Color> rang = [
    Color(0xffE0F2FE),
    Color(0xffF3E8FF),
    Color(0xffFFEDD5),
  ];

  List<String> rang3 = [
   "images/Pattern.png",
   "images/Pattern (1).png",
   "images/Pattern (2).png",
  ];

  List<String> text1 = [
    "Консультация",
    "Подписка 1",
    "Подписка 2",
  ];

  List<String> text2 = [
    "60 сом",
    "850 сом/мес",
    "800 сом/мес",
  ];

  List<String> text3 = [
    "3 консультации с врачом  ",
    "Просмотр курсов                 ",
    "Доступ к курсу со скидкой",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Подписки",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
               
               
                  
               
                
                   
            Container(
              
              height: 620,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: text1.length,
                itemBuilder: (context, index) {
                  return Rat(
                    a: rang[index],
                    b: text1[index],
                    c: text2[index],
                    d: text3[index],
                    e: rang3[index],
                  );
                },
              ),
            ),
               
                Row(
                  
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            
                            Column(
                              children: [
                                Column(
                           children: [
                             Icon(Icons.home),
                             Text("Главная"),
                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                             Icon(Icons.camera),
                             Text("Подписки"),
                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                      Icon(Icons.queue_sharp),
                               Text("Курси"),
                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                        Icon(Icons.message),
                               Text("консультаций"),
                             

                           ],
                        ),
                              ],
                            ),
                               Column(
                              children: [
                                Column(
                           children: [
                             Icon(Icons.person),
                             Text("профил"),
                           ],
                        ),
                              ],
                            ),
                            
                          ],
                        )
              ],
            ),
          ),
        ),
      ),
    );
  }
}