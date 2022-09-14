import 'package:flutter/material.dart';
import 'package:newsapp/data.dart';
import 'package:newsapp/sections/business/Apimanager.dart';
import 'package:newsapp/sections/business/customListTitle.dart';

class BusinessSection extends StatefulWidget{
  @override
  State<BusinessSection> createState() => _BusinessSectionState();
}

class _BusinessSectionState extends State<BusinessSection> {
  ApiManager client = ApiManager();
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: topStories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) => GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width * 0.36,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(topStories[i].imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.9)
                                ],
                                begin: Alignment.topCenter,
                                stops: [0.5, 1],
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacer(),
                                Text(
                                  topStories[i].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${topStories[i].time} hours ago",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: FutureBuilder(future: client.getArticle(),
              builder: (BuildContext context, AsyncSnapshot<List<Articles>> snapshot){
                if (snapshot.hasError){
                  print('errrrror ${snapshot.error.toString()}');
                  return Center(child: Text(snapshot.error.toString()));
                }else if (snapshot.hasData){
                  List<Articles>? articles = snapshot.data;
                  return ListView.builder(itemCount: articles?.length,
                      itemBuilder: (context,index) =>
                          customListTitle(articles![index], context)
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ]);
  }
}


