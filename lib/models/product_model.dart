class Product {
  final String name;
  final String price;
  final String rating;
  final String category;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.rating,
    required this.category,
    required this.imageUrl,
  });
}

// सबै प्रडक्टहरूको विवरण (Rs. र Real Image Links सहित)
const List<Product> allProducts = [
  Product(
    name: "Wireless Headphone",
    price: "Rs. 7,900",
    rating: "4.5",
    category: "Electronics",
    imageUrl: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80"
  ),
  Product(
    name: "Smartwatch",
    price: "Rs. 12,000",
    rating: "4.2",
    category: "Gadget",
    imageUrl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80"
  ),
  Product(
    name: "Laptop Backpack",
    price: "Rs. 4,500",
    rating: "4.7",
    category: "Fashion",
    imageUrl: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500&q=80"
  ),
  Product(
    name: "Minimal Desk Lamp",
    price: "Rs. 3,000",
    rating: "4.0",
    category: "Accessories",
    imageUrl: "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?w=500&q=80"
  ),
  Product(
    name: "Mechanical Keyboard",
    price: "Rs. 8,900",
    rating: "4.6",
    category: "Electronics",
    imageUrl: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=500&q=80"
  ),
  Product(
    name: "Gaming Mouse",
    price: "Rs. 4,000",
    rating: "4.4",
    category: "Gadget",
    imageUrl: "https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=500&q=80"
  ),
  Product(
    name: "Leather Wallet",
    price: "Rs. 1,500",
    rating: "4.3",
    category: "Fashion",
    imageUrl: "https://images.unsplash.com/photo-1627123424574-724758594e93?w=500&q=80"
  ),
  Product(
    name: "Power Bank 20k",
    price: "Rs. 5,200",
    rating: "4.5",
    category: "Accessories",
    imageUrl: "https://images.unsplash.com/photo-1609592424109-dd9892f1b17c?w=500&q=80"
  ),
  Product(
    name: "Bluetooth Speaker",
    price: "Rs. 6,500",
    rating: "4.1",
    category: "Electronics",
    imageUrl: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500&q=80"
  ),
  Product(
    name: "Casual Shoes",
    price: "Rs. 5,500",
    rating: "4.6",
    category: "Fashion",
    imageUrl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&q=80"
  ),
];

const List<String> appCategories = ['All', 'Electronics', 'Fashion', 'Gadget', 'Accessories'];
