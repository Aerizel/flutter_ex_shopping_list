import 'package:flutter/material.dart';
import '../product.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<Product> product = [
    Product("assets/images/sushi.jpg", "sushi", "Taste very good.", 550),
    Product("assets/images/steak.jpg", "steak", "this is delicious.", 1200),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'หน้าหลัก',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,15,0),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart,size: 40,),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
        child: ListView.separated(
          itemCount: product.length,
          itemBuilder: (context, index) {
            Product products = product[index];
            return ListTile(
              leading: SizedBox(
                height: 300,
                width: 150,
                child: Image.asset(products.picture, fit: BoxFit.cover),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      products.name,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(products.desc),
                    ),
                    Text(
                      '${products.price} Bath',
                      style: const TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF00439C)),
                    ),
                  ]),
              trailing: const SizedBox(
                  height: double.infinity,
                  child: Icon(Icons.arrow_forward_ios)),
              /*onTap:() {},*/
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Divider(
                color: Colors.grey[300],
                height: 3,
                thickness: 3,
              ),
            );
          },
        ),
      ),
    );
  }
}
