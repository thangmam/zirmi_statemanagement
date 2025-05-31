import 'package:flutter/material.dart';
import 'package:zirmi_flutter_stagemgmt/widgets/cart_icon_widget.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({super.key});

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {
  final _items = ["Apple", "Mango", "Lemon"];
  int _cartItemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen 3"),
        // actions: [CartIconWidget(cartItemCount: _cartItemCount)],
      ),
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
                          _cartItemCount = _cartItemCount + 1;
                          setState(() {
                            
                          });
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
        ],
      ),
    );
  }
}
