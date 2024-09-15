import 'package:flutter/material.dart';

class Module13Assignment extends StatefulWidget {
  const Module13Assignment({super.key});

  @override
  State<Module13Assignment> createState() => _Module13AssignmentState();
}

class _Module13AssignmentState extends State<Module13Assignment> {
  final List<Item> _items = [
    Item(
        name: 'Item A', unitPrice: 10.0, imagePath: 'assets/images/tshirt.jpg'),
    Item(
        name: 'Item B', unitPrice: 20.0, imagePath: 'assets/images/tshirt.jpg'),
    Item(
        name: 'Item C', unitPrice: 30.0, imagePath: 'assets/images/tshirt.jpg'),
    Item(
        name: 'Item D', unitPrice: 40.0, imagePath: 'assets/images/tshirt.jpg'),
  ];

  final Map<int, int> _quantities = {};

  double _getTotalAmount(double unitPrice, int quantity) {
    return unitPrice * quantity;
  }

  double _getTotalCartAmount() {
    double total = 0;
    _quantities.forEach((index, quantity) {
      total += _getTotalAmount(_items[index].unitPrice, quantity);
    });
    return total;
  }

  void _showCheckoutSnackbar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Congratulations!'),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  final quantity = _quantities[index] ?? 0;
                  final totalAmount = _getTotalAmount(item.unitPrice, quantity);

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          item.imagePath,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(item.name,
                                      style: const TextStyle(fontSize: 18)),
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        icon: const Icon(Icons.remove),
                                        onPressed: () {
                                          setState(() {
                                            if (quantity > 0) {
                                              _quantities[index] = quantity - 1;
                                            }
                                          });
                                        },
                                      ),
                                      Text('$quantity',
                                          style: const TextStyle(fontSize: 18)),
                                      IconButton(
                                        icon: const Icon(Icons.add),
                                        onPressed: () {
                                          setState(() {
                                            _quantities[index] = quantity + 1;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                  'Unit Price: \$${item.unitPrice.toStringAsFixed(2)}',
                                  style: const TextStyle(fontSize: 18)),
                              const SizedBox(height: 8),
                              Text(
                                  'Total Amount: \$${totalAmount.toStringAsFixed(2)}',
                                  style: const TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Total Cart Amount:  \$${_getTotalCartAmount().toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed: () => _showCheckoutSnackbar(context),
              child: const Text('CHECK OUT'),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final double unitPrice;
  final String imagePath;

  Item({required this.name, required this.unitPrice, required this.imagePath});
}

hello all form me
