import 'package:flutter/material.dart';

import '../screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.grey,
      title: const Text('product name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('product code : code'),
          const Text('price : 100'),
          const Text('quantity : code'),
          const Text('total price : code'),
          const Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpdateProductScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('edit'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.delete_outline, color: Colors.red,),
                label: const Text('delete'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}