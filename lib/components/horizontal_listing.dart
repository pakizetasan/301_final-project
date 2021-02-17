import 'package:flutter/material.dart';

class  HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/ayakkabı.jpg',
            image_caption: 'ayakkabı',
          ),
          Category(
            image_location: 'assets/images/elbise.png',
            image_caption: 'elbise',
          ),
          Category(
            image_location: 'assets/images/gömlek.png',
            image_caption: 'gömlek',
          ),


        ],
      ),
    );

  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,
          width: 100.0,
            height: 80.0,
          ),
          subtitle: Text(image_caption),
        ),
      ),
    ),);
  }
}

