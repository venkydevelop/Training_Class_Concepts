import 'package:flutter/material.dart';
import 'package:training_session/database/sql_service.dart';

import '../model/product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  List<ProductModel> _products = [];
  int? productId;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    super.dispose();
  }

  void resetForm() {
    setState(() {
      nameController.clear();
      descriptionController.clear();
      priceController.clear();
      productId = null;
    });
  }

  void _loadProducts() async {
    final products = await SqlService.db.getAllProduct();
    setState(() {
      _products = products;
    });
  }

  void saveProduct() async {
    if (nameController.text.isEmpty ||
        descriptionController.text.isEmpty ||
        priceController.text.isEmpty) {
      return;
    }
    final product = ProductModel(
        id: productId,
        name: nameController.text,
        description: descriptionController.text,
        price: int.parse(priceController.text));
    if (productId == null) {
      await SqlService.db.insert(product);
    } else {
      await SqlService.db.update(product);
    }
    resetForm();
    _loadProducts();
  }

  void updateProduct(ProductModel product) async {
    setState(() {
      nameController.text = product.name ?? '';
      descriptionController.text = product.description ?? '';
      priceController.text = product.price.toString();
      productId = product.id;
    });
  }

  void deleteProduct(int id) async {
    await SqlService.db.delete(id);
    _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SQL DataBase"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Name",
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                hintText: "Description",
              ),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                hintText: "Price",
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    saveProduct();
                  },
                  child: Text(productId == null ? "Insert" : "update")),
            ),
            if (productId != null)
              TextButton(
                  onPressed: () {
                    resetForm();
                  },
                  child: Text("Cancel")),
            Expanded(
              child: ListView.builder(
                  itemCount: _products.length,
                  itemBuilder: (BuildContext context, int index) {
                    final product = _products[index];
                    return ListTile(
                      title: Text(product.name ?? ''),
                      subtitle: Row(
                        children: [
                          Text(product.description ?? ''),
                          const SizedBox(width: 20),
                          Text("\$${product.price}"),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                updateProduct(product);
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                deleteProduct(product.id ?? 0);
                              },
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
