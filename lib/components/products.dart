import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  var product_list= [
    {
      "name": "Ceket",
      "picture": "images/r1.jpeg",
      "old price":100.0,
      "new price":80.0,

    },
    {
      "name": "Elbise",
      "picture": "images/elbise.png",
      "old price":100.0,
      "new price":80.0,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          product_name: product_list[index] ['name'],
          prod_picture: product_list[index] ['picture'],
          prod_old_price: product_list[index] ['old_price'],
          prod_new_price: product_list[index] ['new_price'],
        );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_new_price,
}


  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: product_name, child: Material(child: InkWell(onTap: (){},
        child: GridTile(
          footer: Container(
            color: Colors.white,
            child: ListTile(
              leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("\$$prod_new_price"),
              subtitle: Text("\$$prod_old_price"),
            ),
          ),
            child: Image.asset(prod_picture,
              fit: BoxFit.cover,
            )),

      ),
      )),
    );
  }
}
