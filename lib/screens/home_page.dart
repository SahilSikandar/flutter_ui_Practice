import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/model/cart_model.dart';
import 'package:ui_practice/screens/cart_screen.dart';

import '../styles/text_style.dart';
import '../widgets/grid_tile_itmes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CartScreen(),
            ));
          },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
          )),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Text(
              "Good Morning",
              style: GoogleFonts.notoSerif(),
            ),
            Text(
              "Let's order fresh itmes for you",
              style: Styles.h1,
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(
                //thickness: 2,
                ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Fresh Items",
              style: Styles.h2,
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, items, child) {
                  return GridView.builder(
                    itemCount: items.shopItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return GridTileItems(
                        imgUrl: items.shopItems[index][2],
                        name: items.shopItems[index][0],
                        color: items.shopItems[index][3],
                        price: items.shopItems[index][1],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItems(index);
                        },
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
