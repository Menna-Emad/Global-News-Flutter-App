import 'package:flutter/material.dart';

class settingsTap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: Container(color: Colors.white,
       // color:MyThemeData.primaryColor,
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: ListView(
           //crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             SizedBox(
               height: 20,
             ),
             Row(
               children:
               [
                 Icon(
                 Icons.settings,
                 size: 35,
               ), SizedBox(
                 width: 10,
               ),
                 Text('Settings', style: TextStyle(color: Colors.black,
                     fontSize: 30, fontWeight: FontWeight.bold),),
               ],
             ),SizedBox(height: 20,),

             Row(
               children: [
                 Icon(
                   Icons.person,
                 ),],),
                 SizedBox(
                   width: 10,
                 ),

             Divider(
               thickness: 1,
             ),

             Container(
               child: Row(
                 children: [
                   Icon(
                     Icons.language,
                   ),
                   buildAccountOption(context, 'language'),
                 ],
               ),
             ),
             Divider(
               thickness: 1,
             ),

             Container(
               alignment: Alignment.topLeft,
               child: TextButton(
                   onPressed: () {
                   },
                   child: Container(
                     child: Row(
                       children: [
                         Text(
                           'About US',
                           style: TextStyle(
                             fontSize: 15.0,
                             fontWeight: FontWeight.normal,),
                         ),
                         SizedBox(
                           width: 5,
                         ),
                         Icon(
                           Icons.face,

                         ),
                       ],
                     ),
                   )),
             ),
             Divider(
               thickness: 1,
             ),
             SizedBox(
               height: 5,
             ),
           ],
         ),
     ),
     ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('English'),
                    ),
                    TextButton(onPressed: () {}, child: Text('Arabic')),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('close'))
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ) );
  }

}