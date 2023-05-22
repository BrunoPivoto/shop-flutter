import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/cart_item_widget.dart';
import 'package:shop/models/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Cart cart = Provider.of(context);
    final items = cart.items.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    label: Text(
                      'R\$ ${(cart.totalAmount).toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text('Comprar',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (ctx, i) => CartItemWidget(cartItem: items[i]),
          ))
        ],
      ),
    );
  }
}
