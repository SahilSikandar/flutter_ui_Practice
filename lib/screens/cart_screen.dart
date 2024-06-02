import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/styles/text_style.dart';

import '../model/cart_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Cart',
              style: GoogleFonts.notoSerif(color: Colors.black),
            ),
            automaticallyImplyLeading: true,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
            //automaticallyImplyLeading: true,
            backgroundColor: Colors.grey[50],
            elevation: 0),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          //padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            leading: Image.asset(
                              value.cart[index][2],
                              height: 40,
                            ),
                            title: Text(value.cart[index][0]),
                            subtitle: Text(
                              '\$${value.cart[index][1]}',
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                value.removeItems(index);
                              },
                              icon: const Icon(Icons.cancel),
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green[300]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: Styles.h3,
                            ),
                            Text(
                              '\$${value.calculateTotal()}',
                              style: Styles.h4,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Pay Now",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
