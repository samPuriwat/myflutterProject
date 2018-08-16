import 'package:flutter/material.dart';



class Products extends StatelessWidget{

//properties
final List<String> products;
//constructor
Products([this.products = const []]){
  print('[Products Widget] Constructor');

}



@override
  Widget build(BuildContext context) {
    print('[Products Widget] Build()');
    return      Column(
                  children: products
                      .map(
                        (element) => Card(
                              child: Column(
                                children: <Widget>[
                                   Image.asset('assets/food.jpg'),
                                  Text(element)
                                ],
                              ),
                            ),
                      )
                      .toList());
  }




}