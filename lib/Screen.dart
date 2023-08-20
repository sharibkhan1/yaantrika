
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key,});
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}
class _SliderScreenState extends State<SliderScreen> {
  List imgageList = [
    {"id":1, "image_path":'assets\images\Demon Samurai by Kuroi Susumu_ (1).png'},
    {"id":2, "image_path":'assets\images\download.png'},
    {"id":3, "image_path":'assets\images\luffy.png'},
    //{"id":4, "image_path":'assets\images\sekiro-shadows-die-twice-1-54276-1024x576-MM-80.webp'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('sekiro'),
    ),
    body:Column(children: [
      Stack(
    children: [
      Stack(
        children: [
          InkWell(
            onTap: (){
              print(currentIndex);
            },
            child: CarouselSlider(
              items: imgageList
                  .map(
                  (item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
              )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: false,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason){
                  setState(() {
                    currentIndex=index;
                  });
                }
              ),
            )
          ),
         Positioned(
           bottom: 10,
             left: 0,
           right: 0,
           child:Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: imgageList.asMap().entries.map((entry){
               print(entry);
               print(entry.key);
               return GestureDetector(
                 onTap:()=>carouselController.animateToPage(entry.key) ,
                 child: Container(
                   width: currentIndex == entry.key ? 17:7,
                   height: 7.0,
                   margin: const EdgeInsets.symmetric(
                     horizontal: 3.0,
                   ),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: currentIndex == entry.key
                       ? Colors.deepOrange
                         : Colors.deepPurpleAccent
                   ),
                 ),
               );

             }).toList(),
           ) ,
         ),

        ],
      )
    ],
    ),
    ]),
    );
    }
}
