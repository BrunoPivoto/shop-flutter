import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;
  const CartItemWidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            radius: 25,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: FittedBox(
                child: Text(
                  'R\$${cartItem.price}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )),
        title: Text(cartItem.name),
        subtitle: Text(
            'Total: R\$ ${(cartItem.price * cartItem.qnt).toStringAsFixed(2)}'),
        trailing: Text('x${cartItem.qnt}'),
      ),
    );
  }
}
