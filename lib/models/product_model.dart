class ProductModel {
  final dynamic id;
  final String title;
  final String description;
  final dynamic price;
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
  final dynamic rate;
  final dynamic count;

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
