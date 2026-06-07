import 'package:flutter/material.dart';
import 'models/product_model.dart';
import 'widgets/category_chip.dart';
import 'widgets/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductHomeScreen(),
    );
  }
}

class ProductHomeScreen extends StatefulWidget {
  const ProductHomeScreen({super.key});

  @override
  State<ProductHomeScreen> createState() => _ProductHomeScreenState();
}

class _ProductHomeScreenState extends State<ProductHomeScreen> {
  String selectedCategory = 'All';
  String searchQuery = '';
  List<Product> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = allProducts;
  }

  void filterAndSearchProducts() {
    setState(() {
      filteredProducts = allProducts.where((product) {
        final matchesCategory = selectedCategory == 'All' || product.category == selectedCategory;
        final matchesSearch = product.name.toLowerCase().contains(searchQuery.toLowerCase());
        return matchesCategory && matchesSearch;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gadget Store', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                searchQuery = value;
                filterAndSearchProducts();
              },
              decoration: InputDecoration(
                hintText: 'Search for products...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: appCategories.length,
                itemBuilder: (context, index) {
                  final category = appCategories[index];
                  return CategoryChip(
                    label: category,
                    isSelected: selectedCategory == category,
                    onSelected: (bool selected) {
                      if (selected) {
                        selectedCategory = category;
                        filterAndSearchProducts();
                      }
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: filteredProducts.isEmpty
                  ? const Center(child: Text('कुनै पनि प्रोडक्ट भेटिएन!'))
                  : GridView.builder(
                      itemCount: filteredProducts.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 0.5, // 👈 ओभरफ्लो रोक्न यसलाई 0.5 बनाइयो
                      ),
                      itemBuilder: (context, index) {
                        return ProductGridCard(product: filteredProducts[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
