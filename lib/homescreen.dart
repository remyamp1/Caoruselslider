import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Firstpage extends StatelessWidget{
   final List<String> Imagesurls =[
      "assets/images/coffeeimage2.jpeg",
      "assets/images/image3.jpeg",
      "assets/images/image4.jpeg",
      "assets/images/image5.jpeg",
      "assets/images/image6.jpeg",
        
      ];
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(title: Text("Carousel  slider"),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              aspectRatio: 6/9,
              autoPlayCurve: Curves.fastOutSlowIn,
             autoPlayAnimationDuration: Duration(microseconds: 800),
              viewportFraction: 0.8
            ),
            items: Imagesurls.map((imageurl){
              return Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.pink),
                child: Image.asset(imageurl,fit: BoxFit.cover
                ),

              );

            }).toList(),
            ),
        ],
      ),
     
    );
    
  }
}