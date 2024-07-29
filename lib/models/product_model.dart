class ProductModel {
  final int id;
  final String title;
  final String description;
  final num price;
  final String image;
  final String category;
  final RatingModel rating;
  
  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.rating
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      price: jsonData['price'],
      image: jsonData['image'],
      category: jsonData['category'], 
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final num rate;
  final num count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
