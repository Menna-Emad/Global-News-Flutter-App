import 'package:flutter/material.dart';
import 'package:newsapp/data.dart';


class ArticlePage extends StatelessWidget{
  final Articles articles;
  ArticlePage({required this.articles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,
        title: Text(articles.title?? ""),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(children: [
              Container(height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(articles.urlToImage?? "can't load image"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              SizedBox(height: 10.0,),
              Container( decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
              ),
                child: Text(articles.source!.name?? "",
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20.0,),
              Container(
                child: Text(articles.description?? "",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0
                  ),),
              )
            ],),
          ),
        ),
      ),
    );
  }
}