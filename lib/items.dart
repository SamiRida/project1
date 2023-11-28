import 'package:flutter/material.dart';

class Item {
  final String _name;
  final double _price;
  bool _selected = false; // determines if an item is selected from the menu
  final String _image; // holds image url

  Item(this._name, this._price, this._image);

  // getters and setters
  String get name => _name;
  double get price => _price;
  bool get selected => _selected;
  String get image => _image;
  set selected(bool e) => _selected = e;

  // item description is displayed in the ListView
  @override
  String toString() {
    String space = ''; // loop computes spaces between price and name
    for (int i = 0; i < 3 - _price.toString().length; i++) {
      space += ' ';
    }
    return 'Price: \$$_price $space$_name';
  }
}

// Shirts Lists
List<Item> shirtsItems = [
  Item('Black Shirt Size:S-M-L-XL', 10,
      "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('White Shirt Size:S-M-L-XL', 10,
      "https://images.unsplash.com/photo-1581655353564-df123a1eb820?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Black and Red Shirt Size:S-M-L-XL', 20,
      "https://images.unsplash.com/photo-1594032194509-0056023973b2?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('La Casa Shirt Shirt Size:S-M-L-XL', 20,
      "https://images.unsplash.com/photo-1589902860314-e910697dea18?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
];


// Jackets Lists
List<Item> jacketsItems = [
  Item('Black Leather Jacket Size:S-M-L-XL', 40,
      "https://images.unsplash.com/photo-1551028719-00167b16eac5?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('White Puffer Jacket Size:S-M-L-XL', 50,
      "https://images.unsplash.com/photo-1547635289-f3a1a2078969?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Olive Green Jacket Size:S-M-L-XL', 35,
      "https://images.unsplash.com/photo-1548883354-94bcfe321cbb?q=80&w=1861&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Black Puffer Jacket Size:S-M-L-XL', 50,
      "https://images.unsplash.com/photo-1605908502724-9093a79a1b39?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
];

//Pants Lists
List<Item> pantsItems = [
  Item('Dark blue Pants Size:34-38-40', 15,
      "https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?q=80&w=1897&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Black Cargo Jeans Size:34-38-40', 22,
      "https://images.unsplash.com/photo-1548883354-7622d03aca27?q=80&w=1861&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Sky Blue Jeans Size:34-38-40', 18,
      "https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Beige Jeans Size:34-38-40', 20,
      "https://images.unsplash.com/photo-1473966968600-fa801b869a1a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
];

//Shoes List
List<Item> shoesItems = [
  Item('Brown Shoes Size:38-40-42-44', 60,
      "https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=2012&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Black x White Shoes Size:38-40-42-44', 45,
      "https://images.unsplash.com/photo-1543508282-6319a3e2621f?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('Red Wine Shoes Size:38-40-42-44', 60,
      "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?q=80&w=1898&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
  Item('White Running Shoes Size:38-40-42-44  ', 40,
      "https://images.unsplash.com/photo-1460353581641-37baddab0fa2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
];


class ShirtItems extends StatelessWidget {
  const ShirtItems({required this.width, Key? key}) : super(key: key);
  final double width;


  @override
  Widget build(BuildContext context) {
    List<Item> selectedItems = [];
    for (var e in shirtsItems) {
      if (e.selected) {
        selectedItems.add(e);
      }
    }

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: shirtsItems.length,
      itemBuilder: (context, index) {
        return Column(children: [
          const SizedBox(height: 10),
          SizedBox(width: width * 0.28),
          // get image from url stored in Item image field
          Image.network(shirtsItems[index].image,
              height: width * 0.3),
          const SizedBox(height: 15),
          Text(shirtsItems[index].toString(), style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
        ]);
      },

    );
  }
}


class JacketItems extends StatelessWidget {
  const JacketItems({required this.width, Key? key}) : super(key: key);
  final double width;



  @override
  Widget build(BuildContext context) {
    List<Item> selectedItems = [];
    for (var e in shirtsItems) {
      if (e.selected) {
        selectedItems.add(e);
      }
    }
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: jacketsItems.length,
      itemBuilder: (context, index) {
        return Column(children: [
          const SizedBox(height: 10),
          SizedBox(width: width * 0.28),
          // get image from url stored in Item image field
          Image.network(jacketsItems[index].image,
              height: width * 0.3),
          const SizedBox(height: 15),
          Text( jacketsItems[index].toString(), style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
        ]);
      },


    );
  }
}


class PantsItems extends StatelessWidget {
  const PantsItems({required this.width, Key? key}) : super(key: key);
  final double width;


  @override
  Widget build(BuildContext context) {
    List<Item> selectedItems = [];
    for (var e in shirtsItems) {
      if (e.selected) {
        selectedItems.add(e);
      }
    }
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: pantsItems.length,
      itemBuilder: (context, index) {
        return Column(children: [
          const SizedBox(height: 10),
          SizedBox(width: width * 0.28),
          // get image from url stored in Item image field
          Image.network(pantsItems[index].image,
              height: width * 0.3),
          const SizedBox(height: 15),
          Text(pantsItems[index].toString(), style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
        ]);
      },
    );
  }
}

class ShoesItems extends StatelessWidget {
  const ShoesItems({required this.width, Key? key}) : super(key: key);
  final double width;


  @override
  Widget build(BuildContext context) {
    List<Item> selectedItems = [];
    for (var e in shirtsItems) {
      if (e.selected) {
        selectedItems.add(e);
      }
    }
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: shoesItems.length,
      itemBuilder: (context, index) {
        return Column(children: [
          const SizedBox(height: 10),
          SizedBox(width: width * 0.28),
          // get image from url stored in Item image field
          Image.network(shoesItems[index].image,
              height: width * 0.3),
          const SizedBox(height: 15),
          Text(shoesItems[index].toString(), style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
        ]);
      },
    );
  }
}





