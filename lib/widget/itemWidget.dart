import 'package:flutter/material.dart';
import 'package:navigation_drawer/model/catalog.dart';
import 'package:navigation_drawer/screens/detailsPage.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: Colors.purple.shade100,
        child: GestureDetector(
          onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage()));
          },
          child: ListTile(
            leading: Image.network(
              item.image,
              height: 120,
              width: 100,
              fit: BoxFit.fill,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(item.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            subtitle: Center(
                
              child: Text(item.desc,
                  style: TextStyle(
                      color: Colors.indigo.shade500,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            trailing: Text(
              "\$${item.price}",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
