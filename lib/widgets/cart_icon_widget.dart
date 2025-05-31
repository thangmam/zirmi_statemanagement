import 'package:flutter/material.dart';
import 'package:zirmi_flutter_stagemgmt/models/cart_notifier.dart';

class CartIconWidget extends StatefulWidget {
  const CartIconWidget({super.key});

  @override
  State<CartIconWidget> createState() => _CartIconWidgetState();
}

class _CartIconWidgetState extends State<CartIconWidget> {
  final _cartNotifyer = CartNotifier();
  int _cartItemCount = 0;
  @override
  void initState() {
    _cartNotifyer.addListener(() {
      _cartItemCount = _cartNotifyer.getCartItemCount();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.sports_basketball, size: 30),
        Positioned(
          top: -4,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Text(
              _cartItemCount.toString(),
              style: TextStyle(color: Colors.white),
            ),
            // child: ListenableBuilder(
            //   listenable: _cartNotifyer,
            //   builder: (context, child) {
            //     return Text(
            //       _cartNotifyer.getCartItemCount().toString(),
            //       style: TextStyle(color: Colors.white),
            //     );
            //   },
            // ),
          ),
        ),
      ],
    );
  }
}
