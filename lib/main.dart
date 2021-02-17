

//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:final_projesi/components/horizontal_listing.dart';
import 'package:final_projesi/components/products.dart';

void main (){
  runApp(
MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
)
  );
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= new Container(
      height: 200.0,
      child: new Carousel(
     boxFit: BoxFit.cover,


        images:[
         AssetImage('assets/images/r1.jpeg'),
          AssetImage('assets/images/r2.jpg'),
          AssetImage('assets/images/r3.jpg'),
          AssetImage('assets/images/g.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves. fastOutSlowIn,
       animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber,
        title: Text('ShoppingApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget> [

            new UserAccountsDrawerHeader(accountName: Text('Pakize Tasan'), accountEmail: Text('pakize.tasan@boun.edu.tr'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors. grey,
                child: Icon(Icons.person, color: Colors.white, ),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.amber
              ),
            ),
//   BODY buraya kadar header idi, burdan sonrası body
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.teal,),
            ),
          ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.cyan,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.brown,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.deepPurple,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            // burada aradaki çizgiyi oluşturuyoruz divider ile
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors. green,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(10.0),
          child: new Text('Categories'),),

         //horizontal listing begins here
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),),

          Container(
            height: 320.0,
            child: Products(),
          )

        ],
      ),
    );
  }
}
