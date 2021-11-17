import 'package:flutter/material.dart';
import 'package:navigation_drawer/model/catalog.dart';
import 'package:navigation_drawer/widget/itemWidget.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          // appBar: AppBar(
          //   title: Text("This Is ListView Builder Using Image And Text"),
          // ), 
          body: 
          ListView.builder(
            itemCount: CatalogModel.items.length,

            itemBuilder: (context,index){

            return ItemWidget(item: CatalogModel.items[index]);
          }

          ),);
          
  }
}