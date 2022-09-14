import 'package:flutter/material.dart';
import 'package:newsapp/data.dart';
import 'package:newsapp/sections/business/buisness.dart';
import 'package:newsapp/sections/world/world.dart';
import 'package:newsapp/settings/settingsTap.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller= PageController(
    initialPage: 0,
  );
  int currentpage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu_open,size: 35,color: Colors.amberAccent,),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => settingsTap()),
            );
          },
        ),
        title: Center(child: Text('News',style: TextStyle(fontFamily: 'sigmar',color: Colors.black),)),
      actions: [
        Container(margin:EdgeInsets.symmetric(horizontal: 12),
          child: IconButton(
            icon: Icon(Icons.search_sharp,size: 35,color: Colors.amberAccent,),
            onPressed: (){},
          ),)
      ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Container(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
                itemBuilder: (ctx,i){
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: TextButton(
                    onPressed: (){
                      controller.animateToPage(i, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                    },child: Text(sections[i],
                    style: TextStyle(color:currentpage==i?Colors.amberAccent:Colors.black.withOpacity(0.6),fontSize: 20),
                  ),
                  ),
                );
                },
            itemCount: sections.length,
            scrollDirection: Axis.horizontal,),

          ),
          Expanded(child: PageView(controller: controller,onPageChanged:(value){
            setState(()
            {
              currentpage=value;
            });
          } ,children: [
            WorldSection(),
            BusinessSection(),
            //ScienceSection(),
           // ScienceSection(),
         ],
          ),)
        ],

        ),
      ),

    );
  }
}