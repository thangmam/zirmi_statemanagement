import 'package:flutter/material.dart';
import 'package:zirmi_flutter_stagemgmt/models/cart_notifier.dart';
import 'package:zirmi_flutter_stagemgmt/widgets/cart_icon_widget.dart';

class HomeScreenFour extends StatefulWidget {
  const HomeScreenFour({super.key});

  @override
  State<HomeScreenFour> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenFour> {
  final _items = ["Apple", "Mango", "Lemon"];

  final _cartNotifier = CartNotifier();
  // final _cartNotifier = CartNotifier.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home screen 4"), actions: [CartIconWidget()]),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final i = _items[index];
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        i,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          _cartNotifier.addItemToCart();
                        },
                        child: Text("Add to cart"),
                      ),
                    ],
                  ),
                );
              },
              itemCount: _items.length,
            ),
          ),
          ListenableBuilder(
            listenable: _cartNotifier,
            builder: (context, child) {
              return Text(
                "Items added to count : ${_cartNotifier.getCartItemCount()}",
              );
            },
          ),
        ],
      ),
    );
  }
}
