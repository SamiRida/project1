import 'package:flutter/material.dart';
import 'package:projectshop/shoesHome.dart';
import 'checkout.dart';
import 'items.dart';


class Pants extends StatefulWidget {
  const Pants({Key? key}) : super(key: key);

  @override
  State<Pants> createState() => _PantsState();
}

class _PantsState extends State<Pants> {
  double _sum = 0; // holds total price for selected items
  bool _showSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      screenWidth = screenWidth * 0.8;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          title: Text('Final Price: \$$_sum'),
          centerTitle: true,

          backgroundColor: Colors.cyan.shade200,
          actions: [
            Tooltip(
              message: 'Go To Shoes Section',
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Shoes()),
                  );
                },
                icon: Image.asset("assets/Shoes.png"),
                iconSize: 50,
              ),

            ),

            IconButton(
              onPressed: () {
                setState(() {
                  _sum = 0;
                  for (var e in pantsItems) {
                    e.selected = false;
                  }
                  _showSelected = false;
                });
              },
              icon: const Icon(
                Icons.restore,
              ),
              tooltip: 'Reset selection',
            ),

            IconButton(
              onPressed: () {

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Checkout(total: _sum),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Proceed to Checkout',
            ),

          ],
        ),

      ),
      body: _showSelected
          ? PantsItems(width: screenWidth)
          : ListView.builder(
        itemCount: pantsItems.length,
        itemBuilder: (context, index) {

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

            shape: RoundedRectangleBorder(

              side: const BorderSide(
                color: Colors.pink,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.shade200,

            child: Column(

              children: [

                const SizedBox(height: 10),

                Image.network(
                  pantsItems[index].image,
                  height: screenWidth * 0.3,
                ),

                const SizedBox(height: 10),

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Checkbox(

                      value: pantsItems[index].selected,
                      onChanged: (e) {
                        pantsItems[index].selected = e as bool;
                        if (pantsItems[index].selected) {
                          _sum += pantsItems[index].price;
                        } else {
                          _sum -= pantsItems[index].price;
                        }
                        setState(() {});
                      },
                      activeColor: Colors.pink,
                    ),
                    const SizedBox(height: 10),

                    Text(pantsItems[index].toString(), style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),


                  ],
                ),
              ],
            ),
          );

        },
      ),
    );

  }
}
